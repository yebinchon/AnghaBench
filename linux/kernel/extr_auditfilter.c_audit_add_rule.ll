; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_add_rule.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_add_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_entry = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, i32, %struct.audit_tree*, %struct.audit_watch* }
%struct.audit_tree = type { i32 }
%struct.audit_watch = type { i32 }
%struct.list_head = type { i32 }

@audit_filter_mutex = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@AUDIT_FILTER_EXIT = common dso_local global i32 0, align 4
@AUDIT_FILTER_PREPEND = common dso_local global i32 0, align 4
@prio_high = common dso_local global i64 0, align 8
@prio_low = common dso_local global i64 0, align 8
@audit_rules_list = common dso_local global i32* null, align 8
@audit_n_rules = common dso_local global i32 0, align 4
@audit_signals = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audit_entry*)* @audit_add_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_add_rule(%struct.audit_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.audit_entry*, align 8
  %4 = alloca %struct.audit_entry*, align 8
  %5 = alloca %struct.audit_watch*, align 8
  %6 = alloca %struct.audit_tree*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  store %struct.audit_entry* %0, %struct.audit_entry** %3, align 8
  %9 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %10 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 5
  %12 = load %struct.audit_watch*, %struct.audit_watch** %11, align 8
  store %struct.audit_watch* %12, %struct.audit_watch** %5, align 8
  %13 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %14 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  %16 = load %struct.audit_tree*, %struct.audit_tree** %15, align 8
  store %struct.audit_tree* %16, %struct.audit_tree** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = call i32 @mutex_lock(i32* @audit_filter_mutex)
  %18 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %19 = call %struct.audit_entry* @audit_find_rule(%struct.audit_entry* %18, %struct.list_head** %7)
  store %struct.audit_entry* %19, %struct.audit_entry** %4, align 8
  %20 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  %21 = icmp ne %struct.audit_entry* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = call i32 @mutex_unlock(i32* @audit_filter_mutex)
  %24 = load i32, i32* @EEXIST, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.audit_tree*, %struct.audit_tree** %6, align 8
  %27 = icmp ne %struct.audit_tree* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.audit_tree*, %struct.audit_tree** %6, align 8
  %30 = call i32 @audit_put_tree(%struct.audit_tree* %29)
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %2, align 4
  br label %146

33:                                               ; preds = %1
  %34 = load %struct.audit_watch*, %struct.audit_watch** %5, align 8
  %35 = icmp ne %struct.audit_watch* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %38 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %37, i32 0, i32 1
  %39 = call i32 @audit_add_watch(%struct.TYPE_3__* %38, %struct.list_head** %7)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = call i32 @mutex_unlock(i32* @audit_filter_mutex)
  %44 = load %struct.audit_tree*, %struct.audit_tree** %6, align 8
  %45 = icmp ne %struct.audit_tree* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.audit_tree*, %struct.audit_tree** %6, align 8
  %48 = call i32 @audit_put_tree(%struct.audit_tree* %47)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %2, align 4
  br label %146

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51, %33
  %53 = load %struct.audit_tree*, %struct.audit_tree** %6, align 8
  %54 = icmp ne %struct.audit_tree* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %57 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %56, i32 0, i32 1
  %58 = call i32 @audit_add_tree_rule(%struct.TYPE_3__* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = call i32 @mutex_unlock(i32* @audit_filter_mutex)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %2, align 4
  br label %146

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %52
  %66 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %67 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i64 -1, i64* %68, align 8
  %69 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %70 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @AUDIT_FILTER_EXIT, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %65
  %76 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %77 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @AUDIT_FILTER_PREPEND, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load i64, i64* @prio_high, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* @prio_high, align 8
  %86 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %87 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i64 %85, i64* %88, align 8
  br label %95

89:                                               ; preds = %75
  %90 = load i64, i64* @prio_low, align 8
  %91 = add i64 %90, -1
  store i64 %91, i64* @prio_low, align 8
  %92 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %93 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store i64 %91, i64* %94, align 8
  br label %95

95:                                               ; preds = %89, %83
  br label %96

96:                                               ; preds = %95, %65
  %97 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %98 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @AUDIT_FILTER_PREPEND, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %96
  %105 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %106 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 3
  %108 = load i32*, i32** @audit_rules_list, align 8
  %109 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %110 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %108, i64 %113
  %115 = call i32 @list_add(i32* %107, i32* %114)
  %116 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %117 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %116, i32 0, i32 0
  %118 = load %struct.list_head*, %struct.list_head** %7, align 8
  %119 = call i32 @list_add_rcu(i32* %117, %struct.list_head* %118)
  %120 = load i32, i32* @AUDIT_FILTER_PREPEND, align 4
  %121 = xor i32 %120, -1
  %122 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %123 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, %121
  store i32 %126, i32* %124, align 8
  br label %143

127:                                              ; preds = %96
  %128 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %129 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 3
  %131 = load i32*, i32** @audit_rules_list, align 8
  %132 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %133 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %131, i64 %136
  %138 = call i32 @list_add_tail(i32* %130, i32* %137)
  %139 = load %struct.audit_entry*, %struct.audit_entry** %3, align 8
  %140 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %139, i32 0, i32 0
  %141 = load %struct.list_head*, %struct.list_head** %7, align 8
  %142 = call i32 @list_add_tail_rcu(i32* %140, %struct.list_head* %141)
  br label %143

143:                                              ; preds = %127, %104
  %144 = call i32 @mutex_unlock(i32* @audit_filter_mutex)
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %143, %61, %49, %31
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.audit_entry* @audit_find_rule(%struct.audit_entry*, %struct.list_head**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @audit_put_tree(%struct.audit_tree*) #1

declare dso_local i32 @audit_add_watch(%struct.TYPE_3__*, %struct.list_head**) #1

declare dso_local i32 @audit_add_tree_rule(%struct.TYPE_3__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_add_rcu(i32*, %struct.list_head*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

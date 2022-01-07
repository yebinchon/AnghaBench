; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c___kernfs_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c___kernfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.kernfs_iattrs* }
%struct.kernfs_iattrs = type { i32, i32 }

@kernfs_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"kernfs %s: removing\0A\00", align 1
@KN_DEACTIVATED_BIAS = common dso_local global i64 0, align 8
@KERNFS_ACTIVATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kernfs_node*)* @__kernfs_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__kernfs_remove(%struct.kernfs_node* %0) #0 {
  %2 = alloca %struct.kernfs_node*, align 8
  %3 = alloca %struct.kernfs_node*, align 8
  %4 = alloca %struct.kernfs_iattrs*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %2, align 8
  %5 = call i32 @lockdep_assert_held(i32* @kernfs_mutex)
  %6 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %7 = icmp ne %struct.kernfs_node* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %10 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %15 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %14, i32 0, i32 4
  %16 = call i64 @RB_EMPTY_NODE(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %1
  br label %106

19:                                               ; preds = %13, %8
  %20 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %21 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %22)
  store %struct.kernfs_node* null, %struct.kernfs_node** %3, align 8
  br label %24

24:                                               ; preds = %38, %19
  %25 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %26 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %27 = call %struct.kernfs_node* @kernfs_next_descendant_post(%struct.kernfs_node* %25, %struct.kernfs_node* %26)
  store %struct.kernfs_node* %27, %struct.kernfs_node** %3, align 8
  %28 = icmp ne %struct.kernfs_node* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %31 = call i64 @kernfs_active(%struct.kernfs_node* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i64, i64* @KN_DEACTIVATED_BIAS, align 8
  %35 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %36 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %35, i32 0, i32 2
  %37 = call i32 @atomic_add(i64 %34, i32* %36)
  br label %38

38:                                               ; preds = %33, %29
  br label %24

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %102, %39
  %41 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %42 = call %struct.kernfs_node* @kernfs_leftmost_descendant(%struct.kernfs_node* %41)
  store %struct.kernfs_node* %42, %struct.kernfs_node** %3, align 8
  %43 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %44 = call i32 @kernfs_get(%struct.kernfs_node* %43)
  %45 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %46 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @KERNFS_ACTIVATED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %53 = call i32 @kernfs_drain(%struct.kernfs_node* %52)
  br label %62

54:                                               ; preds = %40
  %55 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %56 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %55, i32 0, i32 2
  %57 = call i64 @atomic_read(i32* %56)
  %58 = load i64, i64* @KN_DEACTIVATED_BIAS, align 8
  %59 = icmp ne i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @WARN_ON_ONCE(i32 %60)
  br label %62

62:                                               ; preds = %54, %51
  %63 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %64 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = icmp ne %struct.TYPE_2__* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %69 = call i64 @kernfs_unlink_sibling(%struct.kernfs_node* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %67, %62
  %72 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %73 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = icmp ne %struct.TYPE_2__* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %78 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %80, align 8
  br label %83

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82, %76
  %84 = phi %struct.kernfs_iattrs* [ %81, %76 ], [ null, %82 ]
  store %struct.kernfs_iattrs* %84, %struct.kernfs_iattrs** %4, align 8
  %85 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %4, align 8
  %86 = icmp ne %struct.kernfs_iattrs* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %4, align 8
  %89 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %88, i32 0, i32 0
  %90 = call i32 @ktime_get_real_ts64(i32* %89)
  %91 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %4, align 8
  %92 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %4, align 8
  %95 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %87, %83
  %97 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %98 = call i32 @kernfs_put(%struct.kernfs_node* %97)
  br label %99

99:                                               ; preds = %96, %67
  %100 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %101 = call i32 @kernfs_put(%struct.kernfs_node* %100)
  br label %102

102:                                              ; preds = %99
  %103 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %104 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %105 = icmp ne %struct.kernfs_node* %103, %104
  br i1 %105, label %40, label %106

106:                                              ; preds = %18, %102
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.kernfs_node* @kernfs_next_descendant_post(%struct.kernfs_node*, %struct.kernfs_node*) #1

declare dso_local i64 @kernfs_active(%struct.kernfs_node*) #1

declare dso_local i32 @atomic_add(i64, i32*) #1

declare dso_local %struct.kernfs_node* @kernfs_leftmost_descendant(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_get(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_drain(%struct.kernfs_node*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @kernfs_unlink_sibling(%struct.kernfs_node*) #1

declare dso_local i32 @ktime_get_real_ts64(i32*) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

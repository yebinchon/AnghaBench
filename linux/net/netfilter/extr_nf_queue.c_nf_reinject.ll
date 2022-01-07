; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_queue.c_nf_reinject.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_queue.c_nf_reinject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_queue_entry = type { i32, %struct.TYPE_4__, %struct.sk_buff* }
%struct.TYPE_4__ = type { i32, %struct.net*, i32 (%struct.net*, i32, %struct.sk_buff*)*, i32, i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nf_hook_entry = type { i32 }
%struct.nf_hook_entries = type { i32, %struct.nf_hook_entry* }

@NF_REPEAT = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@NF_VERDICT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_reinject(%struct.nf_queue_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.nf_queue_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nf_hook_entry*, align 8
  %6 = alloca %struct.nf_hook_entries*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nf_queue_entry* %0, %struct.nf_queue_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %13 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %12, i32 0, i32 2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %14, %struct.sk_buff** %7, align 8
  %15 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %16 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.net*, %struct.net** %17, align 8
  store %struct.net* %18, %struct.net** %8, align 8
  %19 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %20 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.net*, %struct.net** %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %26 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.nf_hook_entries* @nf_hook_entries_head(%struct.net* %23, i32 %24, i32 %28)
  store %struct.nf_hook_entries* %29, %struct.nf_hook_entries** %6, align 8
  %30 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %31 = call i32 @nf_queue_entry_release_refs(%struct.nf_queue_entry* %30)
  %32 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %33 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %9, align 4
  %35 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %6, align 8
  %36 = icmp ne %struct.nf_hook_entries* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %2
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %6, align 8
  %40 = getelementptr inbounds %struct.nf_hook_entries, %struct.nf_hook_entries* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp uge i32 %38, %41
  br label %43

43:                                               ; preds = %37, %2
  %44 = phi i1 [ true, %2 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  %46 = call i64 @WARN_ON_ONCE(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = call i32 @kfree_skb(%struct.sk_buff* %49)
  %51 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %52 = call i32 @kfree(%struct.nf_queue_entry* %51)
  br label %131

53:                                               ; preds = %43
  %54 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %6, align 8
  %55 = getelementptr inbounds %struct.nf_hook_entries, %struct.nf_hook_entries* %54, i32 0, i32 1
  %56 = load %struct.nf_hook_entry*, %struct.nf_hook_entry** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.nf_hook_entry, %struct.nf_hook_entry* %56, i64 %58
  store %struct.nf_hook_entry* %59, %struct.nf_hook_entry** %5, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @NF_REPEAT, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load %struct.nf_hook_entry*, %struct.nf_hook_entry** %5, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %67 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %66, i32 0, i32 1
  %68 = call i32 @nf_hook_entry_hookfn(%struct.nf_hook_entry* %64, %struct.sk_buff* %65, %struct.TYPE_4__* %67)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %63, %53
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %70, 131
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %75 = call i64 @nf_reroute(%struct.sk_buff* %73, %struct.nf_queue_entry* %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @NF_DROP, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %72
  br label %80

80:                                               ; preds = %79, %69
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %81, 131
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  br label %84

84:                                               ; preds = %122, %83
  %85 = load i32, i32* %9, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %9, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %88 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %89 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %88, i32 0, i32 1
  %90 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %6, align 8
  %91 = call i32 @nf_iterate(%struct.sk_buff* %87, %struct.TYPE_4__* %89, %struct.nf_hook_entries* %90, i32* %9)
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %84, %80
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @NF_VERDICT_MASK, align 4
  %95 = and i32 %93, %94
  switch i32 %95, label %125 [
    i32 131, label %96
    i32 128, label %96
    i32 130, label %113
    i32 129, label %124
  ]

96:                                               ; preds = %92, %92
  %97 = call i32 (...) @local_bh_disable()
  %98 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %99 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32 (%struct.net*, i32, %struct.sk_buff*)*, i32 (%struct.net*, i32, %struct.sk_buff*)** %100, align 8
  %102 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %103 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load %struct.net*, %struct.net** %104, align 8
  %106 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %107 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %111 = call i32 %101(%struct.net* %105, i32 %109, %struct.sk_buff* %110)
  %112 = call i32 (...) @local_bh_enable()
  br label %128

113:                                              ; preds = %92
  %114 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %115 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %116 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %115, i32 0, i32 1
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @nf_queue(%struct.sk_buff* %114, %struct.TYPE_4__* %116, i32 %117, i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  br label %84

123:                                              ; preds = %113
  br label %128

124:                                              ; preds = %92
  br label %128

125:                                              ; preds = %92
  %126 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %127 = call i32 @kfree_skb(%struct.sk_buff* %126)
  br label %128

128:                                              ; preds = %125, %124, %123, %96
  %129 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %130 = call i32 @kfree(%struct.nf_queue_entry* %129)
  br label %131

131:                                              ; preds = %128, %48
  ret void
}

declare dso_local %struct.nf_hook_entries* @nf_hook_entries_head(%struct.net*, i32, i32) #1

declare dso_local i32 @nf_queue_entry_release_refs(%struct.nf_queue_entry*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.nf_queue_entry*) #1

declare dso_local i32 @nf_hook_entry_hookfn(%struct.nf_hook_entry*, %struct.sk_buff*, %struct.TYPE_4__*) #1

declare dso_local i64 @nf_reroute(%struct.sk_buff*, %struct.nf_queue_entry*) #1

declare dso_local i32 @nf_iterate(%struct.sk_buff*, %struct.TYPE_4__*, %struct.nf_hook_entries*, i32*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @nf_queue(%struct.sk_buff*, %struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

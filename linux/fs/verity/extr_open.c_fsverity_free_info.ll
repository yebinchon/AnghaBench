; ModuleID = '/home/carl/AnghaBench/linux/fs/verity/extr_open.c_fsverity_free_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/verity/extr_open.c_fsverity_free_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsverity_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@fsverity_info_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsverity_free_info(%struct.fsverity_info* %0) #0 {
  %2 = alloca %struct.fsverity_info*, align 8
  store %struct.fsverity_info* %0, %struct.fsverity_info** %2, align 8
  %3 = load %struct.fsverity_info*, %struct.fsverity_info** %2, align 8
  %4 = icmp ne %struct.fsverity_info* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %15

6:                                                ; preds = %1
  %7 = load %struct.fsverity_info*, %struct.fsverity_info** %2, align 8
  %8 = getelementptr inbounds %struct.fsverity_info, %struct.fsverity_info* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @kfree(i32 %10)
  %12 = load i32, i32* @fsverity_info_cachep, align 4
  %13 = load %struct.fsverity_info*, %struct.fsverity_info** %2, align 8
  %14 = call i32 @kmem_cache_free(i32 %12, %struct.fsverity_info* %13)
  br label %15

15:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.fsverity_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

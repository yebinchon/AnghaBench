; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_mnt_is_readonly.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_mnt_is_readonly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfsmount*)* @mnt_is_readonly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mnt_is_readonly(%struct.vfsmount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfsmount*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %3, align 8
  %4 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %5 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %15

11:                                               ; preds = %1
  %12 = call i32 (...) @smp_rmb()
  %13 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %14 = call i32 @__mnt_is_readonly(%struct.vfsmount* %13)
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %11, %10
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @__mnt_is_readonly(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

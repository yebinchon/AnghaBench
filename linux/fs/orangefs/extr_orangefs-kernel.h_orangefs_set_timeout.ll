; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-kernel.h_orangefs_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-kernel.h_orangefs_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i8* }

@jiffies = common dso_local global i32 0, align 4
@orangefs_dcache_timeout_msecs = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*)* @orangefs_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @orangefs_set_timeout(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %4 = load i32, i32* @jiffies, align 4
  %5 = load i32, i32* @orangefs_dcache_timeout_msecs, align 4
  %6 = load i32, i32* @HZ, align 4
  %7 = mul nsw i32 %5, %6
  %8 = sdiv i32 %7, 1000
  %9 = add nsw i32 %4, %8
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = load %struct.dentry*, %struct.dentry** %2, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

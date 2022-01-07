; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_compat.c_compat_nfs_string.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_compat.c_compat_nfs_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_string = type { i32, i32 }
%struct.compat_nfs_string = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_string*, %struct.compat_nfs_string*)* @compat_nfs_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compat_nfs_string(%struct.nfs_string* %0, %struct.compat_nfs_string* %1) #0 {
  %3 = alloca %struct.nfs_string*, align 8
  %4 = alloca %struct.compat_nfs_string*, align 8
  store %struct.nfs_string* %0, %struct.nfs_string** %3, align 8
  store %struct.compat_nfs_string* %1, %struct.compat_nfs_string** %4, align 8
  %5 = load %struct.compat_nfs_string*, %struct.compat_nfs_string** %4, align 8
  %6 = getelementptr inbounds %struct.compat_nfs_string, %struct.compat_nfs_string* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @compat_ptr(i32 %7)
  %9 = load %struct.nfs_string*, %struct.nfs_string** %3, align 8
  %10 = getelementptr inbounds %struct.nfs_string, %struct.nfs_string* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.compat_nfs_string*, %struct.compat_nfs_string** %4, align 8
  %12 = getelementptr inbounds %struct.compat_nfs_string, %struct.compat_nfs_string* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nfs_string*, %struct.nfs_string** %3, align 8
  %15 = getelementptr inbounds %struct.nfs_string, %struct.nfs_string* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  ret void
}

declare dso_local i32 @compat_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/security/extr_commoncap.c_is_v3header.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_commoncap.c_is_v3header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_cap_data = type { i32 }

@XATTR_CAPS_SZ_3 = common dso_local global i64 0, align 8
@VFS_CAP_REVISION_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.vfs_cap_data*)* @is_v3header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_v3header(i64 %0, %struct.vfs_cap_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.vfs_cap_data*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.vfs_cap_data* %1, %struct.vfs_cap_data** %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @XATTR_CAPS_SZ_3, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %19

10:                                               ; preds = %2
  %11 = load %struct.vfs_cap_data*, %struct.vfs_cap_data** %5, align 8
  %12 = getelementptr inbounds %struct.vfs_cap_data, %struct.vfs_cap_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le32_to_cpu(i32 %13)
  %15 = call i64 @sansflags(i32 %14)
  %16 = load i64, i64* @VFS_CAP_REVISION_3, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %10, %9
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i64 @sansflags(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

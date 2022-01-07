; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_lz4_wrapper.c_lz4_comp_opts.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_lz4_wrapper.c_lz4_comp_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.squashfs_sb_info = type { i32 }
%struct.lz4_comp_opts = type { i32 }

@EIO = common dso_local global i32 0, align 4
@LZ4_LEGACY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Unknown LZ4 version\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.squashfs_sb_info*, i8*, i32)* @lz4_comp_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lz4_comp_opts(%struct.squashfs_sb_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.squashfs_sb_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lz4_comp_opts*, align 8
  store %struct.squashfs_sb_info* %0, %struct.squashfs_sb_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.lz4_comp_opts*
  store %struct.lz4_comp_opts* %10, %struct.lz4_comp_opts** %8, align 8
  %11 = load %struct.lz4_comp_opts*, %struct.lz4_comp_opts** %8, align 8
  %12 = icmp eq %struct.lz4_comp_opts* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %21

17:                                               ; preds = %13, %3
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i8* @ERR_PTR(i32 %19)
  store i8* %20, i8** %4, align 8
  br label %34

21:                                               ; preds = %13
  %22 = load %struct.lz4_comp_opts*, %struct.lz4_comp_opts** %8, align 8
  %23 = getelementptr inbounds %struct.lz4_comp_opts, %struct.lz4_comp_opts* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  %26 = load i64, i64* @LZ4_LEGACY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = call i32 @ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i8* @ERR_PTR(i32 %31)
  store i8* %32, i8** %4, align 8
  br label %34

33:                                               ; preds = %21
  store i8* null, i8** %4, align 8
  br label %34

34:                                               ; preds = %33, %28, %17
  %35 = load i8*, i8** %4, align 8
  ret i8* %35
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

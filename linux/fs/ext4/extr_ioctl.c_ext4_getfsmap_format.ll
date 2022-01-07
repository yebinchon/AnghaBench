; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ioctl.c_ext4_getfsmap_format.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ioctl.c_ext4_getfsmap_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_fsmap = type { i32 }
%struct.getfsmap_info = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.fsmap = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_fsmap*, i8*)* @ext4_getfsmap_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_getfsmap_format(%struct.ext4_fsmap* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ext4_fsmap*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.getfsmap_info*, align 8
  %7 = alloca %struct.fsmap, align 4
  store %struct.ext4_fsmap* %0, %struct.ext4_fsmap** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.getfsmap_info*
  store %struct.getfsmap_info* %9, %struct.getfsmap_info** %6, align 8
  %10 = load %struct.getfsmap_info*, %struct.getfsmap_info** %6, align 8
  %11 = getelementptr inbounds %struct.getfsmap_info, %struct.getfsmap_info* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ext4_fsmap*, %struct.ext4_fsmap** %4, align 8
  %14 = call i32 @trace_ext4_getfsmap_mapping(i32 %12, %struct.ext4_fsmap* %13)
  %15 = load %struct.ext4_fsmap*, %struct.ext4_fsmap** %4, align 8
  %16 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.getfsmap_info*, %struct.getfsmap_info** %6, align 8
  %19 = getelementptr inbounds %struct.getfsmap_info, %struct.getfsmap_info* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.getfsmap_info*, %struct.getfsmap_info** %6, align 8
  %21 = getelementptr inbounds %struct.getfsmap_info, %struct.getfsmap_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ext4_fsmap*, %struct.ext4_fsmap** %4, align 8
  %24 = call i32 @ext4_fsmap_from_internal(i32 %22, %struct.fsmap* %7, %struct.ext4_fsmap* %23)
  %25 = load %struct.getfsmap_info*, %struct.getfsmap_info** %6, align 8
  %26 = getelementptr inbounds %struct.getfsmap_info, %struct.getfsmap_info* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.getfsmap_info*, %struct.getfsmap_info** %6, align 8
  %31 = getelementptr inbounds %struct.getfsmap_info, %struct.getfsmap_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  %36 = call i64 @copy_to_user(i32* %35, %struct.fsmap* %7, i32 4)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load i32, i32* @EFAULT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @trace_ext4_getfsmap_mapping(i32, %struct.ext4_fsmap*) #1

declare dso_local i32 @ext4_fsmap_from_internal(i32, %struct.fsmap*, %struct.ext4_fsmap*) #1

declare dso_local i64 @copy_to_user(i32*, %struct.fsmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

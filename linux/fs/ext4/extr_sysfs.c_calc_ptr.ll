; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_sysfs.c_calc_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_sysfs.c_calc_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_attr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.ext4_sb_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ext4_attr*, %struct.ext4_sb_info*)* @calc_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @calc_ptr(%struct.ext4_attr* %0, %struct.ext4_sb_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ext4_attr*, align 8
  %5 = alloca %struct.ext4_sb_info*, align 8
  store %struct.ext4_attr* %0, %struct.ext4_attr** %4, align 8
  store %struct.ext4_sb_info* %1, %struct.ext4_sb_info** %5, align 8
  %6 = load %struct.ext4_attr*, %struct.ext4_attr** %4, align 8
  %7 = getelementptr inbounds %struct.ext4_attr, %struct.ext4_attr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %34 [
    i32 130, label %9
    i32 129, label %14
    i32 128, label %23
  ]

9:                                                ; preds = %2
  %10 = load %struct.ext4_attr*, %struct.ext4_attr** %4, align 8
  %11 = getelementptr inbounds %struct.ext4_attr, %struct.ext4_attr* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %3, align 8
  br label %35

14:                                               ; preds = %2
  %15 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %16 = bitcast %struct.ext4_sb_info* %15 to i8*
  %17 = load %struct.ext4_attr*, %struct.ext4_attr** %4, align 8
  %18 = getelementptr inbounds %struct.ext4_attr, %struct.ext4_attr* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %16, i64 %21
  store i8* %22, i8** %3, align 8
  br label %35

23:                                               ; preds = %2
  %24 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %25 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.ext4_attr*, %struct.ext4_attr** %4, align 8
  %29 = getelementptr inbounds %struct.ext4_attr, %struct.ext4_attr* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %27, i64 %32
  store i8* %33, i8** %3, align 8
  br label %35

34:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %35

35:                                               ; preds = %34, %23, %14, %9
  %36 = load i8*, i8** %3, align 8
  ret i8* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

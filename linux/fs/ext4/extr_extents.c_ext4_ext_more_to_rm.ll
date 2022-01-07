; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_more_to_rm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_more_to_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_ext_path = type { i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_ext_path*)* @ext4_ext_more_to_rm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_more_to_rm(%struct.ext4_ext_path* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ext4_ext_path*, align 8
  store %struct.ext4_ext_path* %0, %struct.ext4_ext_path** %3, align 8
  %4 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %5 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %11 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %14 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = call i32* @EXT_FIRST_INDEX(%struct.TYPE_2__* %15)
  %17 = icmp ult i32* %12, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

19:                                               ; preds = %1
  %20 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %21 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le16_to_cpu(i32 %24)
  %26 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %27 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %32

31:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %30, %18
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @EXT_FIRST_INDEX(%struct.TYPE_2__*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

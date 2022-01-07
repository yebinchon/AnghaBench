; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_find_rec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_find_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32 }
%struct.ocfs2_extent_rec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_extent_list*, i64)* @ocfs2_find_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_find_rec(%struct.ocfs2_extent_list* %0, i64 %1) #0 {
  %3 = alloca %struct.ocfs2_extent_list*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_extent_rec*, align 8
  store %struct.ocfs2_extent_list* %0, %struct.ocfs2_extent_list** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.ocfs2_extent_rec* null, %struct.ocfs2_extent_rec** %6, align 8
  %7 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @le16_to_cpu(i32 %9)
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %30, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %3, align 8
  %17 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %16, i32 0, i32 0
  %18 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %18, i64 %20
  store %struct.ocfs2_extent_rec* %21, %struct.ocfs2_extent_rec** %6, align 8
  %22 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %6, align 8
  %23 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  %26 = load i64, i64* %4, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %33

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %5, align 4
  br label %12

33:                                               ; preds = %28, %12
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

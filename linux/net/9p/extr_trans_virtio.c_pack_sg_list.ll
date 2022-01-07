; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_virtio.c_pack_sg_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_virtio.c_pack_sg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, i32, i32, i8*, i32)* @pack_sg_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_sg_list(%struct.scatterlist* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %12, align 4
  br label %14

14:                                               ; preds = %25, %5
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %14
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @rest_of_page(i8* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %23, %17
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sge i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %31, i64 %33
  %35 = call i32 @sg_unmark_end(%struct.scatterlist* %34)
  %36 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %36, i64 %39
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @sg_set_buf(%struct.scatterlist* %40, i8* %41, i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %9, align 8
  br label %14

51:                                               ; preds = %14
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %57, i64 %60
  %62 = call i32 @sg_mark_end(%struct.scatterlist* %61)
  br label %63

63:                                               ; preds = %56, %51
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 %64, %65
  ret i32 %66
}

declare dso_local i32 @rest_of_page(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sg_unmark_end(%struct.scatterlist*) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i8*, i32) #1

declare dso_local i32 @sg_mark_end(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

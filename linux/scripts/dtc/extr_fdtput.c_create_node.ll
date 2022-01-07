; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_fdtput.c_create_node.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_fdtput.c_create_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_ERR_BADPATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @create_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_node(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = call i8* @strrchr(i8* %8, i8 signext 47)
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @FDT_ERR_BADPATH, align 4
  %15 = sub nsw i32 0, %14
  %16 = call i32 @report_error(i8* %13, i32 -1, i32 %15)
  store i32 -1, i32* %3, align 4
  br label %47

17:                                               ; preds = %2
  %18 = load i8*, i8** %7, align 8
  store i8 0, i8* %18, align 1
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ugt i8* %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @fdt_path_offset(i8* %23, i8* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @report_error(i8* %29, i32 -1, i32 %30)
  store i32 -1, i32* %3, align 4
  br label %47

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %17
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = call i32 @fdt_add_subnode(i8* %34, i32 %35, i8* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @report_error(i8* %43, i32 -1, i32 %44)
  store i32 -1, i32* %3, align 4
  br label %47

46:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %41, %28, %12
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @report_error(i8*, i32, i32) #1

declare dso_local i32 @fdt_path_offset(i8*, i8*) #1

declare dso_local i32 @fdt_add_subnode(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

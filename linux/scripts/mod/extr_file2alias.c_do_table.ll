; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_table.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i8*, i32 }

@ALIAS_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MODULE_ALIAS(\22%s\22);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i8*, i32 (i8*, i8*, i8*)*, %struct.module*)* @do_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_table(i8* %0, i64 %1, i64 %2, i8* %3, i32 (i8*, i8*, i8*)* %4, %struct.module* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32 (i8*, i8*, i8*)*, align 8
  %12 = alloca %struct.module*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 (i8*, i8*, i8*)* %4, i32 (i8*, i8*, i8*)** %11, align 8
  store %struct.module* %5, %struct.module** %12, align 8
  %16 = load i32, i32* @ALIAS_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %14, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %15, align 8
  %20 = load %struct.module*, %struct.module** %12, align 8
  %21 = getelementptr inbounds %struct.module, %struct.module* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @device_id_check(i8* %22, i8* %23, i64 %24, i64 %25, i8* %26)
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = sub i64 %29, %28
  store i64 %30, i64* %8, align 8
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %52, %6
  %32 = load i32, i32* %13, align 4
  %33 = zext i32 %32 to i64
  %34 = load i64, i64* %8, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %31
  %37 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %11, align 8
  %38 = load %struct.module*, %struct.module** %12, align 8
  %39 = getelementptr inbounds %struct.module, %struct.module* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %13, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr i8, i8* %41, i64 %43
  %45 = call i32 %37(i8* %40, i8* %44, i8* %19)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = load %struct.module*, %struct.module** %12, align 8
  %49 = getelementptr inbounds %struct.module, %struct.module* %48, i32 0, i32 1
  %50 = call i32 @buf_printf(i32* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %51

51:                                               ; preds = %47, %36
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* %13, align 4
  %55 = zext i32 %54 to i64
  %56 = add i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %13, align 4
  br label %31

58:                                               ; preds = %31
  %59 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %59)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @device_id_check(i8*, i8*, i64, i64, i8*) #2

declare dso_local i32 @buf_printf(i32*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_pnp_device_entry.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_pnp_device_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32, i32 }

@SIZE_pnp_device_id = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"pnp\00", align 1
@pnp_device_id = common dso_local global i32 0, align 4
@id = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"MODULE_ALIAS(\22pnp:d%s*\22);\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"MODULE_ALIAS(\22acpi*:%s:*\22);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.module*)* @do_pnp_device_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_pnp_device_entry(i8* %0, i64 %1, %struct.module* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i8], align 1
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.module* %2, %struct.module** %6, align 8
  %12 = load i64, i64* @SIZE_pnp_device_id, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %7, align 8
  %15 = udiv i64 %13, %14
  %16 = sub i64 %15, 1
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load %struct.module*, %struct.module** %6, align 8
  %19 = getelementptr inbounds %struct.module, %struct.module* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @device_id_check(i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %22, i8* %23)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %67, %3
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %70

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* %7, align 8
  %34 = mul i64 %32, %33
  %35 = getelementptr i8, i8* %30, i64 %34
  %36 = load i32, i32* @pnp_device_id, align 4
  %37 = load i8**, i8*** @id, align 8
  %38 = call i32 @DEF_FIELD_ADDR(i8* %35, i32 %36, i8** %37)
  %39 = load %struct.module*, %struct.module** %6, align 8
  %40 = getelementptr inbounds %struct.module, %struct.module* %39, i32 0, i32 0
  %41 = load i8**, i8*** @id, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @buf_printf(i32* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %59, %29
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %46, 8
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load i8**, i8*** @id, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = call signext i8 @toupper(i8 signext %54)
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 %57
  store i8 %55, i8* %58, align 1
  br label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %44

62:                                               ; preds = %44
  %63 = load %struct.module*, %struct.module** %6, align 8
  %64 = getelementptr inbounds %struct.module, %struct.module* %63, i32 0, i32 0
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %66 = call i32 @buf_printf(i32* %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %9, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %25

70:                                               ; preds = %25
  ret void
}

declare dso_local i32 @device_id_check(i32, i8*, i64, i64, i8*) #1

declare dso_local i32 @DEF_FIELD_ADDR(i8*, i32, i8**) #1

declare dso_local i32 @buf_printf(i32*, i8*, i8*) #1

declare dso_local signext i8 @toupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

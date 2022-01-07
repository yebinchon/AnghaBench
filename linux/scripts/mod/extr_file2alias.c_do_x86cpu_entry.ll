; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_x86cpu_entry.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_x86cpu_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x86_cpu_id = common dso_local global i32 0, align 4
@feature = common dso_local global i64 0, align 8
@family = common dso_local global i64 0, align 8
@model = common dso_local global i64 0, align 8
@vendor = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"cpu:type:x86,\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ven\00", align 1
@X86_VENDOR_ANY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"fam\00", align 1
@X86_FAMILY_ANY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@X86_MODEL_ANY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c":feature:*\00", align 1
@X86_FEATURE_ANY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"%04X*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @do_x86cpu_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_x86cpu_entry(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* @x86_cpu_id, align 4
  %9 = load i64, i64* @feature, align 8
  %10 = call i32 @DEF_FIELD(i8* %7, i32 %8, i64 %9)
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @x86_cpu_id, align 4
  %13 = load i64, i64* @family, align 8
  %14 = call i32 @DEF_FIELD(i8* %11, i32 %12, i64 %13)
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @x86_cpu_id, align 4
  %17 = load i64, i64* @model, align 8
  %18 = call i32 @DEF_FIELD(i8* %15, i32 %16, i64 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @x86_cpu_id, align 4
  %21 = load i64, i64* @vendor, align 8
  %22 = call i32 @DEF_FIELD(i8* %19, i32 %20, i64 %21)
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strcpy(i8* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* @vendor, align 8
  %27 = load i64, i64* @X86_VENDOR_ANY, align 8
  %28 = icmp ne i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* @vendor, align 8
  %31 = call i32 @ADD(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %29, i64 %30)
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* @family, align 8
  %34 = load i64, i64* @X86_FAMILY_ANY, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* @family, align 8
  %38 = call i32 @ADD(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %36, i64 %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* @model, align 8
  %41 = load i64, i64* @X86_MODEL_ANY, align 8
  %42 = icmp ne i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* @model, align 8
  %45 = call i32 @ADD(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %43, i64 %44)
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @strcat(i8* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i64, i64* @feature, align 8
  %49 = load i64, i64* @X86_FEATURE_ANY, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %3
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = load i64, i64* @feature, align 8
  %58 = call i32 @sprintf(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 %57)
  br label %59

59:                                               ; preds = %51, %3
  ret i32 1
}

declare dso_local i32 @DEF_FIELD(i8*, i32, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @ADD(i8*, i8*, i32, i64) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

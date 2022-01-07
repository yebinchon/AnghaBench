; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_cat_read.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_cat_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32 }
%struct.hashtab = type { i32 }
%struct.cat_datum = type { i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.hashtab*, i8*)* @cat_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cat_read(%struct.policydb* %0, %struct.hashtab* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.policydb*, align 8
  %6 = alloca %struct.hashtab*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cat_datum*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca i8*, align 8
  store %struct.policydb* %0, %struct.policydb** %5, align 8
  store %struct.hashtab* %1, %struct.hashtab** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.cat_datum* @kzalloc(i32 16, i32 %13)
  store %struct.cat_datum* %14, %struct.cat_datum** %9, align 8
  %15 = load %struct.cat_datum*, %struct.cat_datum** %9, align 8
  %16 = icmp ne %struct.cat_datum* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %62

20:                                               ; preds = %3
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @next_entry(i32* %21, i8* %22, i32 12)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %57

27:                                               ; preds = %20
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @le32_to_cpu(i32 %29)
  store i8* %30, i8** %12, align 8
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @le32_to_cpu(i32 %32)
  %34 = load %struct.cat_datum*, %struct.cat_datum** %9, align 8
  %35 = getelementptr inbounds %struct.cat_datum, %struct.cat_datum* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @le32_to_cpu(i32 %37)
  %39 = load %struct.cat_datum*, %struct.cat_datum** %9, align 8
  %40 = getelementptr inbounds %struct.cat_datum, %struct.cat_datum* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @str_read(i8** %8, i32 %41, i8* %42, i8* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %27
  br label %57

48:                                               ; preds = %27
  %49 = load %struct.hashtab*, %struct.hashtab** %6, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.cat_datum*, %struct.cat_datum** %9, align 8
  %52 = call i32 @hashtab_insert(%struct.hashtab* %49, i8* %50, %struct.cat_datum* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %57

56:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %62

57:                                               ; preds = %55, %47, %26
  %58 = load i8*, i8** %8, align 8
  %59 = load %struct.cat_datum*, %struct.cat_datum** %9, align 8
  %60 = call i32 @cat_destroy(i8* %58, %struct.cat_datum* %59, i32* null)
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %57, %56, %17
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.cat_datum* @kzalloc(i32, i32) #1

declare dso_local i32 @next_entry(i32*, i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @str_read(i8**, i32, i8*, i8*) #1

declare dso_local i32 @hashtab_insert(%struct.hashtab*, i8*, %struct.cat_datum*) #1

declare dso_local i32 @cat_destroy(i8*, %struct.cat_datum*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

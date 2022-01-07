; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_conditional.c_cond_read_bool.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_conditional.c_cond_read_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32 }
%struct.hashtab = type { i32 }
%struct.cond_bool_datum = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cond_read_bool(%struct.policydb* %0, %struct.hashtab* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.policydb*, align 8
  %6 = alloca %struct.hashtab*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cond_bool_datum*, align 8
  %10 = alloca [3 x i8], align 1
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %5, align 8
  store %struct.hashtab* %1, %struct.hashtab** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.cond_bool_datum* @kzalloc(i32 16, i32 %13)
  store %struct.cond_bool_datum* %14, %struct.cond_bool_datum** %9, align 8
  %15 = load %struct.cond_bool_datum*, %struct.cond_bool_datum** %9, align 8
  %16 = icmp ne %struct.cond_bool_datum* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %90

20:                                               ; preds = %3
  %21 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @next_entry(i8* %21, i8* %22, i64 3)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %85

27:                                               ; preds = %20
  %28 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = call i8* @le32_to_cpu(i8 signext %29)
  %31 = load %struct.cond_bool_datum*, %struct.cond_bool_datum** %9, align 8
  %32 = getelementptr inbounds %struct.cond_bool_datum, %struct.cond_bool_datum* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = call i8* @le32_to_cpu(i8 signext %34)
  %36 = load %struct.cond_bool_datum*, %struct.cond_bool_datum** %9, align 8
  %37 = getelementptr inbounds %struct.cond_bool_datum, %struct.cond_bool_datum* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  %40 = load %struct.cond_bool_datum*, %struct.cond_bool_datum** %9, align 8
  %41 = call i32 @bool_isvalid(%struct.cond_bool_datum* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %27
  br label %85

44:                                               ; preds = %27
  %45 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = call i8* @le32_to_cpu(i8 signext %46)
  %48 = ptrtoint i8* %47 to i64
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i64, i64* %11, align 8
  %53 = icmp eq i64 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %44
  br label %85

55:                                               ; preds = %51
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %12, align 4
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %58, 1
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @kmalloc(i64 %59, i32 %60)
  store i8* %61, i8** %8, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %55
  br label %85

65:                                               ; preds = %55
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @next_entry(i8* %66, i8* %67, i64 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %85

73:                                               ; preds = %65
  %74 = load i8*, i8** %8, align 8
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load %struct.hashtab*, %struct.hashtab** %6, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load %struct.cond_bool_datum*, %struct.cond_bool_datum** %9, align 8
  %80 = call i32 @hashtab_insert(%struct.hashtab* %77, i8* %78, %struct.cond_bool_datum* %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %85

84:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %90

85:                                               ; preds = %83, %72, %64, %54, %43, %26
  %86 = load i8*, i8** %8, align 8
  %87 = load %struct.cond_bool_datum*, %struct.cond_bool_datum** %9, align 8
  %88 = call i32 @cond_destroy_bool(i8* %86, %struct.cond_bool_datum* %87, i32* null)
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %85, %84, %17
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.cond_bool_datum* @kzalloc(i32, i32) #1

declare dso_local i32 @next_entry(i8*, i8*, i64) #1

declare dso_local i8* @le32_to_cpu(i8 signext) #1

declare dso_local i32 @bool_isvalid(%struct.cond_bool_datum*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @hashtab_insert(%struct.hashtab*, i8*, %struct.cond_bool_datum*) #1

declare dso_local i32 @cond_destroy_bool(i8*, %struct.cond_bool_datum*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

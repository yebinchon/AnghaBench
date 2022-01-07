; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_module_signature.c_mod_check_sig.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_module_signature.c_mod_check_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_signature = type { i64, i64, i64, i64, i64, i64*, i32 }

@EBADMSG = common dso_local global i32 0, align 4
@PKEY_ID_PKCS7 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"%s: Module is not signed with expected PKCS#7 message\0A\00", align 1
@ENOPKG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"%s: PKCS#7 signature info has unexpected non-zero params\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mod_check_sig(%struct.module_signature* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module_signature*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.module_signature* %0, %struct.module_signature** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.module_signature*, %struct.module_signature** %5, align 8
  %9 = getelementptr inbounds %struct.module_signature, %struct.module_signature* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @be32_to_cpu(i32 %10)
  %12 = load i64, i64* %6, align 8
  %13 = sub i64 %12, 56
  %14 = icmp uge i64 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EBADMSG, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %76

18:                                               ; preds = %3
  %19 = load %struct.module_signature*, %struct.module_signature** %5, align 8
  %20 = getelementptr inbounds %struct.module_signature, %struct.module_signature* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PKEY_ID_PKCS7, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @ENOPKG, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %76

29:                                               ; preds = %18
  %30 = load %struct.module_signature*, %struct.module_signature** %5, align 8
  %31 = getelementptr inbounds %struct.module_signature, %struct.module_signature* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %70, label %34

34:                                               ; preds = %29
  %35 = load %struct.module_signature*, %struct.module_signature** %5, align 8
  %36 = getelementptr inbounds %struct.module_signature, %struct.module_signature* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %70, label %39

39:                                               ; preds = %34
  %40 = load %struct.module_signature*, %struct.module_signature** %5, align 8
  %41 = getelementptr inbounds %struct.module_signature, %struct.module_signature* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %70, label %44

44:                                               ; preds = %39
  %45 = load %struct.module_signature*, %struct.module_signature** %5, align 8
  %46 = getelementptr inbounds %struct.module_signature, %struct.module_signature* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %70, label %49

49:                                               ; preds = %44
  %50 = load %struct.module_signature*, %struct.module_signature** %5, align 8
  %51 = getelementptr inbounds %struct.module_signature, %struct.module_signature* %50, i32 0, i32 5
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %49
  %57 = load %struct.module_signature*, %struct.module_signature** %5, align 8
  %58 = getelementptr inbounds %struct.module_signature, %struct.module_signature* %57, i32 0, i32 5
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %56
  %64 = load %struct.module_signature*, %struct.module_signature** %5, align 8
  %65 = getelementptr inbounds %struct.module_signature, %struct.module_signature* %64, i32 0, i32 5
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63, %56, %49, %44, %39, %34, %29
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  %73 = load i32, i32* @EBADMSG, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %76

75:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %70, %24, %15
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

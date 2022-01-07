; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/debug/i386/extr_dump_psb.c_decode_psb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/debug/i386/extr_dump_psb.c_decode_psb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_header = type { i32, i32, i32, i32, i32 }
%struct.pst_header = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [75 x i8] c"PSB version: %hhx flags: %hhx settling time %hhuus res1 %hhx num pst %hhu\0A\00", align 1
@sgtc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Overriding number of pst :%d\0A\00", align 1
@relevant = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [69 x i8] c"  PST %d  cpuid %.3x fsb %hhu mfid %hhx svid %hhx numberstates %hhu\0A\00", align 1
@fsb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @decode_psb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_psb(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.psb_header*, align 8
  %7 = alloca %struct.pst_header*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.psb_header*
  store %struct.psb_header* %9, %struct.psb_header** %6, align 8
  %10 = load %struct.psb_header*, %struct.psb_header** %6, align 8
  %11 = getelementptr inbounds %struct.psb_header, %struct.psb_header* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 18
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %110

15:                                               ; preds = %2
  %16 = load %struct.psb_header*, %struct.psb_header** %6, align 8
  %17 = getelementptr inbounds %struct.psb_header, %struct.psb_header* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.psb_header*, %struct.psb_header** %6, align 8
  %20 = getelementptr inbounds %struct.psb_header, %struct.psb_header* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.psb_header*, %struct.psb_header** %6, align 8
  %23 = getelementptr inbounds %struct.psb_header, %struct.psb_header* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.psb_header*, %struct.psb_header** %6, align 8
  %26 = getelementptr inbounds %struct.psb_header, %struct.psb_header* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.psb_header*, %struct.psb_header** %6, align 8
  %29 = getelementptr inbounds %struct.psb_header, %struct.psb_header* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.psb_header*, %struct.psb_header** %6, align 8
  %33 = getelementptr inbounds %struct.psb_header, %struct.psb_header* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 100
  store i32 %35, i32* @sgtc, align 4
  %36 = load i32, i32* @sgtc, align 4
  %37 = icmp slt i32 %36, 10000
  br i1 %37, label %38, label %39

38:                                               ; preds = %15
  store i32 10000, i32* @sgtc, align 4
  br label %39

39:                                               ; preds = %38, %15
  %40 = load %struct.psb_header*, %struct.psb_header** %6, align 8
  %41 = bitcast %struct.psb_header* %40 to i8*
  %42 = getelementptr inbounds i8, i8* %41, i64 20
  store i8* %42, i8** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.psb_header*, %struct.psb_header** %6, align 8
  %47 = getelementptr inbounds %struct.psb_header, %struct.psb_header* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %4, align 4
  br label %52

49:                                               ; preds = %39
  %50 = load i32, i32* %4, align 4
  %51 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %45
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %107, %52
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %110

57:                                               ; preds = %53
  %58 = load i8*, i8** %3, align 8
  %59 = bitcast i8* %58 to %struct.pst_header*
  store %struct.pst_header* %59, %struct.pst_header** %7, align 8
  %60 = load i64, i64* @relevant, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i64, i64* @relevant, align 8
  %64 = load %struct.pst_header*, %struct.pst_header** %7, align 8
  %65 = getelementptr inbounds %struct.pst_header, %struct.pst_header* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %98

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %57
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  %73 = load %struct.pst_header*, %struct.pst_header** %7, align 8
  %74 = getelementptr inbounds %struct.pst_header, %struct.pst_header* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.pst_header*, %struct.pst_header** %7, align 8
  %77 = getelementptr inbounds %struct.pst_header, %struct.pst_header* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.pst_header*, %struct.pst_header** %7, align 8
  %80 = getelementptr inbounds %struct.pst_header, %struct.pst_header* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pst_header*, %struct.pst_header** %7, align 8
  %83 = getelementptr inbounds %struct.pst_header, %struct.pst_header* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.pst_header*, %struct.pst_header** %7, align 8
  %86 = getelementptr inbounds %struct.pst_header, %struct.pst_header* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %72, i64 %75, i32 %78, i32 %81, i32 %84, i32 %87)
  %89 = load %struct.pst_header*, %struct.pst_header** %7, align 8
  %90 = getelementptr inbounds %struct.pst_header, %struct.pst_header* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* @fsb, align 4
  %92 = load i8*, i8** %3, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 24
  %94 = load %struct.pst_header*, %struct.pst_header** %7, align 8
  %95 = getelementptr inbounds %struct.pst_header, %struct.pst_header* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @decode_pst(i8* %93, i32 %96)
  br label %98

98:                                               ; preds = %70, %68
  %99 = load %struct.pst_header*, %struct.pst_header** %7, align 8
  %100 = getelementptr inbounds %struct.pst_header, %struct.pst_header* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 2, %101
  %103 = sext i32 %102 to i64
  %104 = add i64 24, %103
  %105 = load i8*, i8** %3, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 %104
  store i8* %106, i8** %3, align 8
  br label %107

107:                                              ; preds = %98
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %53

110:                                              ; preds = %14, %53
  ret void
}

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @decode_pst(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/debug/i386/extr_intel_gsic.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/debug/i386/extr_intel_gsic.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LRMI_regs = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"Failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"BIOS supports GSIC call:\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"\09signature: %c%c%c%c\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\09command port = 0x%.4x\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"\09command =      0x%.4x\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"\09event port =   0x%.8x\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"\09flags =        0x%.8x\0A\00", align 1
@.str.7 = private unnamed_addr constant [173 x i8] c"non-default command value. If speedstep-smi doesn't work out of the box,\0Ayou may want to try out the default value by passing smi_cmd=0x82 to the module\0A ON YOUR OWN RISK.\0A\00", align 1
@.str.8 = private unnamed_addr constant [173 x i8] c"non-default command port. If speedstep-smi doesn't work out of the box,\0Ayou may want to try out the default value by passing smi_port=0x82 to the module\0A ON YOUR OWN RISK.\0A\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"BIOS DOES NOT support GSIC call.  Dumping registers anyway:\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"eax = 0x%.8x\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"ebx = 0x%.8x\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"ecx = 0x%.8x\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"edx = 0x%.8x\0A\00", align 1
@.str.14 = private unnamed_addr constant [180 x i8] c"Note also that some BIOS do not support the initial GSIC call, but the newer\0Aspeedstep-smi driver may work.\0AFor this, you need to pass some arguments to the speedstep-smi driver:\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"\09smi_cmd=0x?? smi_port=0x?? smi_sig=1\0A\00", align 1
@.str.16 = private unnamed_addr constant [103 x i8] c"\0AUnfortunately, you have to know what exactly are smi_cmd and smi_port, and this\0Ais system dependant.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.LRMI_regs, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = call i32 (...) @LRMI_init()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %86

7:                                                ; preds = %0
  %8 = call i32 @memset(%struct.LRMI_regs* %2, i32 0, i32 16)
  %9 = getelementptr inbounds %struct.LRMI_regs, %struct.LRMI_regs* %2, i32 0, i32 0
  store i32 59776, i32* %9, align 4
  %10 = getelementptr inbounds %struct.LRMI_regs, %struct.LRMI_regs* %2, i32 0, i32 1
  store i32 1196640579, i32* %10, align 4
  %11 = call i32 @LRMI_int(i32 21, %struct.LRMI_regs* %2)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %86

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.LRMI_regs, %struct.LRMI_regs* %2, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1196640579
  br i1 %19, label %20, label %68

20:                                               ; preds = %16
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %22 = getelementptr inbounds %struct.LRMI_regs, %struct.LRMI_regs* %2, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 24
  %25 = and i32 %24, 255
  %26 = getelementptr inbounds %struct.LRMI_regs, %struct.LRMI_regs* %2, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = getelementptr inbounds %struct.LRMI_regs, %struct.LRMI_regs* %2, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 255
  %34 = getelementptr inbounds %struct.LRMI_regs, %struct.LRMI_regs* %2, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 255
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %25, i32 %29, i32 %33, i32 %36)
  %38 = getelementptr inbounds %struct.LRMI_regs, %struct.LRMI_regs* %2, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 65535
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = getelementptr inbounds %struct.LRMI_regs, %struct.LRMI_regs* %2, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 16
  %45 = and i32 %44, 65535
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds %struct.LRMI_regs, %struct.LRMI_regs* %2, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  %50 = getelementptr inbounds %struct.LRMI_regs, %struct.LRMI_regs* %2, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds %struct.LRMI_regs, %struct.LRMI_regs* %2, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 16
  %56 = and i32 %55, 65535
  %57 = icmp ne i32 %56, 130
  br i1 %57, label %58, label %60

58:                                               ; preds = %20
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.7, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %20
  %61 = getelementptr inbounds %struct.LRMI_regs, %struct.LRMI_regs* %2, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 65535
  %64 = icmp ne i32 %63, 178
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.8, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %60
  br label %85

68:                                               ; preds = %16
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0))
  %70 = getelementptr inbounds %struct.LRMI_regs, %struct.LRMI_regs* %2, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %71)
  %73 = getelementptr inbounds %struct.LRMI_regs, %struct.LRMI_regs* %2, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %74)
  %76 = getelementptr inbounds %struct.LRMI_regs, %struct.LRMI_regs* %2, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %77)
  %79 = getelementptr inbounds %struct.LRMI_regs, %struct.LRMI_regs* %2, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %80)
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([180 x i8], [180 x i8]* @.str.14, i64 0, i64 0))
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0))
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.16, i64 0, i64 0))
  br label %85

85:                                               ; preds = %68, %67
  store i32 1, i32* %1, align 4
  br label %86

86:                                               ; preds = %85, %14, %6
  %87 = load i32, i32* %1, align 4
  ret i32 %87
}

declare dso_local i32 @LRMI_init(...) #1

declare dso_local i32 @memset(%struct.LRMI_regs*, i32, i32) #1

declare dso_local i32 @LRMI_int(i32, %struct.LRMI_regs*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

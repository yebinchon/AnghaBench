; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_dsp_get_mac.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_dsp_get_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { i8** }

@eReg_ADMACESMSB = common dso_local global i32 0, align 4
@eReg_ADMACESLSB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lx_dsp_get_mac(%struct.lx6464es* %0) #0 {
  %2 = alloca %struct.lx6464es*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lx6464es* %0, %struct.lx6464es** %2, align 8
  %5 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %6 = load i32, i32* @eReg_ADMACESMSB, align 4
  %7 = call i32 @lx_dsp_reg_read(%struct.lx6464es* %5, i32 %6)
  %8 = and i32 %7, 16777215
  store i32 %8, i32* %3, align 4
  %9 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %10 = load i32, i32* @eReg_ADMACESLSB, align 4
  %11 = call i32 @lx_dsp_reg_read(%struct.lx6464es* %9, i32 %10)
  %12 = and i32 %11, 16777215
  store i32 %12, i32* %4, align 4
  %13 = bitcast i32* %4 to i8**
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 4
  %16 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %17 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 5
  store i8* %15, i8** %19, align 8
  %20 = bitcast i32* %4 to i8**
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 4
  %23 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %24 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 4
  store i8* %22, i8** %26, align 8
  %27 = bitcast i32* %4 to i8**
  %28 = getelementptr inbounds i8*, i8** %27, i64 2
  %29 = load i8*, i8** %28, align 4
  %30 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %31 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %30, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 3
  store i8* %29, i8** %33, align 8
  %34 = bitcast i32* %3 to i8**
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 4
  %37 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %38 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 2
  store i8* %36, i8** %40, align 8
  %41 = bitcast i32* %3 to i8**
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8*, i8** %42, align 4
  %44 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %45 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  store i8* %43, i8** %47, align 8
  %48 = bitcast i32* %3 to i8**
  %49 = getelementptr inbounds i8*, i8** %48, i64 2
  %50 = load i8*, i8** %49, align 4
  %51 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %52 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %51, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  store i8* %50, i8** %54, align 8
  ret i32 0
}

declare dso_local i32 @lx_dsp_reg_read(%struct.lx6464es*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

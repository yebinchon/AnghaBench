; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_getsourcesink.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_getsourcesink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cmdret = type { i8* }
%struct.cmdif = type { i32 }

@CMDRET_ZERO = common dso_local global %union.cmdret zeroinitializer, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"getsourcesink 0x%x 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdif*, i8, i8, i8*, i8*)* @getsourcesink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getsourcesink(%struct.cmdif* %0, i8 zeroext %1, i8 zeroext %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmdif*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %union.cmdret, align 8
  store %struct.cmdif* %0, %struct.cmdif** %7, align 8
  store i8 %1, i8* %8, align 1
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = bitcast %union.cmdret* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%union.cmdret* @CMDRET_ZERO to i8*), i64 8, i1 false)
  %14 = load %struct.cmdif*, %struct.cmdif** %7, align 8
  %15 = load i8, i8* %8, align 1
  %16 = load i8, i8* %9, align 1
  %17 = call i64 @SEND_RSSV(%struct.cmdif* %14, i8 zeroext %15, i8 zeroext %16, %union.cmdret* %12)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %5
  %20 = load %struct.cmdif*, %struct.cmdif** %7, align 8
  %21 = load i8, i8* %8, align 1
  %22 = load i8, i8* %9, align 1
  %23 = call i64 @SEND_RSSV(%struct.cmdif* %20, i8 zeroext %21, i8 zeroext %22, %union.cmdret* %12)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %44

28:                                               ; preds = %19, %5
  %29 = bitcast %union.cmdret* %12 to i8**
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = load i8*, i8** %10, align 8
  store i8 %32, i8* %33, align 1
  %34 = bitcast %union.cmdret* %12 to i8**
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = load i8*, i8** %11, align 8
  store i8 %37, i8* %38, align 1
  %39 = load i8*, i8** %10, align 8
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %11, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @snd_printdd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8 zeroext %40, i8 zeroext %42)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %28, %25
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @SEND_RSSV(%struct.cmdif*, i8 zeroext, i8 zeroext, %union.cmdret*) #2

declare dso_local i32 @snd_printdd(i8*, i8 zeroext, i8 zeroext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

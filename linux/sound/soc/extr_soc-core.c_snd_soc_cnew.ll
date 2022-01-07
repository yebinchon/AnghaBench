; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_cnew.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_cnew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_kcontrol_new = type { i8*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_kcontrol* @snd_soc_cnew(%struct.snd_kcontrol_new* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca %struct.snd_kcontrol_new*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.snd_kcontrol_new, align 8
  %11 = alloca %struct.snd_kcontrol*, align 8
  %12 = alloca i8*, align 8
  store %struct.snd_kcontrol_new* %0, %struct.snd_kcontrol_new** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %12, align 8
  %13 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %14 = call i32 @memcpy(%struct.snd_kcontrol_new* %10, %struct.snd_kcontrol_new* %13, i32 16)
  %15 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %10, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %10, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  br label %21

21:                                               ; preds = %18, %4
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i8* @kasprintf(i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %27)
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  store %struct.snd_kcontrol* null, %struct.snd_kcontrol** %5, align 8
  br label %44

32:                                               ; preds = %24
  %33 = load i8*, i8** %12, align 8
  %34 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %10, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  br label %38

35:                                               ; preds = %21
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %10, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i8*, i8** %7, align 8
  %40 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %10, i8* %39)
  store %struct.snd_kcontrol* %40, %struct.snd_kcontrol** %11, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @kfree(i8* %41)
  %43 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %11, align 8
  store %struct.snd_kcontrol* %43, %struct.snd_kcontrol** %5, align 8
  br label %44

44:                                               ; preds = %38, %31
  %45 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  ret %struct.snd_kcontrol* %45
}

declare dso_local i32 @memcpy(%struct.snd_kcontrol_new*, %struct.snd_kcontrol_new*, i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i8*, i8*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

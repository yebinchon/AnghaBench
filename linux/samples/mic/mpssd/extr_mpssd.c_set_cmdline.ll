; ModuleID = '/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_mpssd.c_set_cmdline.c'
source_filename = "/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_mpssd.c_set_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_info = type { i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"clocksource=tsc highres=off nohz=off \00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"cpufreq_on;corec6_off;pc3_off;pc6_off \00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"ifcfg=static;address,172.31.%d.1;netmask,255.255.255.0\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"cmdline\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%s: Command line: \22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"172.31.%d.1\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%s: IPADDR: \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mic_info*)* @set_cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cmdline(%struct.mic_info* %0) #0 {
  %2 = alloca %struct.mic_info*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.mic_info* %0, %struct.mic_info** %2, align 8
  %6 = load i32, i32* @PATH_MAX, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i32, i32* @PATH_MAX, align 4
  %11 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %9, i32 %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %9, i64 %13
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %15, %16
  %18 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %14, i32 %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %9, i64 %22
  %24 = load i32, i32* @PATH_MAX, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %24, %25
  %27 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %28 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %23, i32 %26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %35 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @setsysfs(i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %9)
  %38 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %39 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mpsslog(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %40, i8* %9)
  %42 = load i32, i32* @PATH_MAX, align 4
  %43 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %44 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %9, i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %46)
  %48 = load %struct.mic_info*, %struct.mic_info** %2, align 8
  %49 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mpsslog(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %50, i8* %9)
  %52 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %52)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @setsysfs(i32, i8*, i8*) #2

declare dso_local i32 @mpsslog(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

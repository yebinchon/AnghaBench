; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf_probes.c_get_vendor_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf_probes.c_get_vendor_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IF_NAMESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"/sys/class/net/%s/device/vendor\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_vendor_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_vendor_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca [8 x i8], align 1
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* @IF_NAMESIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @if_indextoname(i32 %15, i8* %14)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %46

19:                                               ; preds = %1
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %21 = call i32 @snprintf(i8* %20, i32 64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %14)
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %23 = load i32, i32* @O_RDONLY, align 4
  %24 = call i32 @open(i8* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %46

28:                                               ; preds = %19
  %29 = load i32, i32* %9, align 4
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %31 = call i64 @read(i32 %29, i8* %30, i32 8)
  store i64 %31, i64* %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @close(i32 %32)
  %34 = load i64, i64* %8, align 8
  %35 = icmp ult i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %46

37:                                               ; preds = %28
  %38 = load i64, i64* %8, align 8
  %39 = icmp uge i64 %38, 8
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %46

41:                                               ; preds = %37
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %42
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %45 = call i32 @strtol(i8* %44, i32* null, i32 0)
  store i32 %45, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %46

46:                                               ; preds = %41, %40, %36, %27, %18
  %47 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @if_indextoname(i32, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i64 @read(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @strtol(i8*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

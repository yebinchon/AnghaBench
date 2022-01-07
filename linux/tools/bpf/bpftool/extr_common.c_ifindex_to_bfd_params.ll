; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_common.c_ifindex_to_bfd_params.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_common.c_ifindex_to_bfd_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IF_NAMESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Can't get net device name for ifindex %d: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Can't get device vendor id for %s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Unknown NFP device ID, assuming it is NFP-6xxx arch\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ctx4\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"NFP-6xxx\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"Can't get bfd arch name for device vendor id 0x%04x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ifindex_to_bfd_params(i32 %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %15 = load i32, i32* @IF_NAMESIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @ifindex_to_name_ns(i32 %19, i32 %20, i32 %21, i8* %18)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27)
  store i8* null, i8** %5, align 8
  store i32 1, i32* %14, align 4
  br label %54

29:                                               ; preds = %4
  %30 = call i32 @read_sysfs_netdev_hex_int(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  store i8* null, i8** %5, align 8
  store i32 1, i32* %14, align 4
  br label %54

35:                                               ; preds = %29
  %36 = load i32, i32* %12, align 4
  switch i32 %36, label %51 [
    i32 6638, label %37
  ]

37:                                               ; preds = %35
  %38 = call i32 @read_sysfs_netdev_hex_int(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 16384
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 24576
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 24579
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 @p_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %44, %41, %37
  %50 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %50, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  store i32 1, i32* %14, align 4
  br label %54

51:                                               ; preds = %35
  %52 = load i32, i32* %12, align 4
  %53 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 %52)
  store i8* null, i8** %5, align 8
  store i32 1, i32* %14, align 4
  br label %54

54:                                               ; preds = %51, %49, %33, %24
  %55 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i8*, i8** %5, align 8
  ret i8* %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ifindex_to_name_ns(i32, i32, i32, i8*) #2

declare dso_local i32 @p_err(i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @read_sysfs_netdev_hex_int(i8*, i8*) #2

declare dso_local i32 @p_info(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

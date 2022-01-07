; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_feature.c_probe_map_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_feature.c_probe_map_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"eBPF map_type \00", align 1
@map_type_name = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"map type name too long\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"have_%s_map_type\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s_map_type\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @probe_map_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_map_type(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  %8 = alloca [128 x i8], align 16
  %9 = alloca [128 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @bpf_probe_map_type(i32 %13, i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i8*, i8** %10, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = sub i64 128, %17
  %19 = sub i64 %18, 1
  store i64 %19, i64* %11, align 8
  %20 = load i8**, i8*** @map_type_name, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = load i64, i64* %11, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = call i32 @p_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %61

30:                                               ; preds = %3
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %32 = load i8**, i8*** @map_type_name, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %39 = load i8**, i8*** @map_type_name, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %46 = call i32 @uppercase(i8* %45, i32 128)
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %48 = load i8*, i8** %10, align 8
  %49 = load i8**, i8*** @map_type_name, align 8
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %48, i8* %53)
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %58 = load i32, i32* %12, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @print_bool_feature(i8* %55, i8* %56, i8* %57, i32 %58, i8* %59)
  br label %61

61:                                               ; preds = %30, %28
  ret void
}

declare dso_local i32 @bpf_probe_map_type(i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @p_info(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @uppercase(i8*, i32) #1

declare dso_local i32 @print_bool_feature(i8*, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

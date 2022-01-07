; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/api/fs/extr_fs.c_mount_overload.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/api/fs/extr_fs.c_mount_overload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i8*, i8** }

@.str = private unnamed_addr constant [20 x i8] c"PERF_%s_ENVIRONMENT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.fs*)* @mount_overload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mount_overload(%struct.fs* %0) #0 {
  %2 = alloca %struct.fs*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.fs* %0, %struct.fs** %2, align 8
  %6 = load %struct.fs*, %struct.fs** %2, align 8
  %7 = getelementptr inbounds %struct.fs, %struct.fs* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i64 @strlen(i8* %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = add i64 5, %10
  %12 = add i64 %11, 12
  %13 = add i64 %12, 1
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.fs*, %struct.fs** %2, align 8
  %18 = getelementptr inbounds %struct.fs, %struct.fs* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @snprintf(i8* %15, i64 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @mem_toupper(i8* %15, i64 %21)
  %23 = call i64 @getenv(i8* %15)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = inttoptr i64 %23 to i8*
  br label %32

27:                                               ; preds = %1
  %28 = load %struct.fs*, %struct.fs** %2, align 8
  %29 = getelementptr inbounds %struct.fs, %struct.fs* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = load i8*, i8** %30, align 8
  br label %32

32:                                               ; preds = %27, %25
  %33 = phi i8* [ %26, %25 ], [ %31, %27 ]
  %34 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %34)
  ret i8* %33
}

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @mem_toupper(i8*, i64) #1

declare dso_local i64 @getenv(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

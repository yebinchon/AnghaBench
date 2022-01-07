; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_assert.c_test_dump_stack.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_assert.c_test_dump_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"addr2line -s -e /proc/$PPID/exe -fpai\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"|cat -n 1>&2\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" %lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_dump_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_dump_stack() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i64 20, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8*, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strlen(i8* %14)
  %16 = add nsw i64 %13, %15
  %17 = load i64, i64* %2, align 8
  %18 = mul i64 %17, 17
  %19 = add i64 %16, %18
  %20 = add i64 %19, 1
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %22 = load i64, i64* %2, align 8
  %23 = call i64 @backtrace(i8** %11, i64 %22)
  store i64 %23, i64* %2, align 8
  %24 = getelementptr inbounds i8, i8* %21, i64 0
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %8, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %8, align 8
  store i64 2, i64* %1, align 8
  br label %31

31:                                               ; preds = %46, %0
  %32 = load i64, i64* %1, align 8
  %33 = load i64, i64* %2, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* %1, align 8
  %38 = getelementptr inbounds i8*, i8** %11, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = ptrtoint i8* %39 to i64
  %41 = sub i64 %40, 1
  %42 = call i32 (i8*, i8*, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %41)
  %43 = load i8*, i8** %8, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %8, align 8
  br label %46

46:                                               ; preds = %35
  %47 = load i64, i64* %1, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %1, align 8
  br label %31

49:                                               ; preds = %31
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 (i8*, i8*, ...) @sprintf(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = load i8*, i8** %8, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %8, align 8
  %56 = call i32 @system(i8* %21)
  %57 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %57)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @backtrace(i8**, i64) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @system(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

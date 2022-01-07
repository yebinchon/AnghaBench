; ModuleID = '/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_parse_ip_val_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_parse_ip_val_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8*, i32)* @parse_ip_val_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ip_val_buffer(i8* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 59)
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i8*, i8** %10, align 8
  store i8 0, i8* %23, align 1
  br label %29

24:                                               ; preds = %4
  %25 = load i8*, i8** %11, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8* %28, i8** %10, align 8
  br label %29

29:                                               ; preds = %24, %22
  %30 = load i8*, i8** %11, align 8
  %31 = call i64 @strlen(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %73

33:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %42, %33
  %35 = load i8*, i8** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 32
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %34

45:                                               ; preds = %34
  %46 = load i8*, i8** %10, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp sle i64 %50, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %45
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = call i32 @strcpy(i8* %55, i8* %59)
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = add nsw i64 %65, 1
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %66
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 4
  store i32 1, i32* %5, align 4
  br label %74

72:                                               ; preds = %45
  br label %73

73:                                               ; preds = %72, %29
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %54
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

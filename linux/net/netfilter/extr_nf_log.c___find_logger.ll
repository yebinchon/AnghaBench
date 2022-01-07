; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_log.c___find_logger.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_log.c___find_logger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_logger = type { i32 }

@NF_LOG_TYPE_MAX = common dso_local global i32 0, align 4
@loggers = common dso_local global i32*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nf_logger* (i32, i8*)* @__find_logger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nf_logger* @__find_logger(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.nf_logger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nf_logger*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %48, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @NF_LOG_TYPE_MAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %51

12:                                               ; preds = %8
  %13 = load i32***, i32**** @loggers, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32**, i32*** %13, i64 %15
  %17 = load i32**, i32*** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %48

24:                                               ; preds = %12
  %25 = load i32***, i32**** @loggers, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32**, i32*** %25, i64 %27
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = call %struct.nf_logger* @nft_log_dereference(i32* %33)
  store %struct.nf_logger* %34, %struct.nf_logger** %6, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load %struct.nf_logger*, %struct.nf_logger** %6, align 8
  %37 = getelementptr inbounds %struct.nf_logger, %struct.nf_logger* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nf_logger*, %struct.nf_logger** %6, align 8
  %40 = getelementptr inbounds %struct.nf_logger, %struct.nf_logger* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strlen(i32 %41)
  %43 = call i32 @strncasecmp(i8* %35, i32 %38, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %24
  %46 = load %struct.nf_logger*, %struct.nf_logger** %6, align 8
  store %struct.nf_logger* %46, %struct.nf_logger** %3, align 8
  br label %52

47:                                               ; preds = %24
  br label %48

48:                                               ; preds = %47, %23
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %8

51:                                               ; preds = %8
  store %struct.nf_logger* null, %struct.nf_logger** %3, align 8
  br label %52

52:                                               ; preds = %51, %45
  %53 = load %struct.nf_logger*, %struct.nf_logger** %3, align 8
  ret %struct.nf_logger* %53
}

declare dso_local %struct.nf_logger* @nft_log_dereference(i32*) #1

declare dso_local i32 @strncasecmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

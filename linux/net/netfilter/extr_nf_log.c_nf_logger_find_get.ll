; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_log.c_nf_logger_find_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_log.c_nf_logger_find_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_logger = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@NFPROTO_INET = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@NFPROTO_IPV6 = common dso_local global i32 0, align 4
@loggers = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [16 x i8] c"nf-logger-%u-%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_logger_find_get(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_logger*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @ENOENT, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @NFPROTO_INET, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load i32, i32* @NFPROTO_IPV4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @nf_logger_find_get(i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %75

21:                                               ; preds = %13
  %22 = load i32, i32* @NFPROTO_IPV6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @nf_logger_find_get(i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i32, i32* @NFPROTO_IPV4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @nf_logger_put(i32 %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %75

32:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %75

33:                                               ; preds = %2
  %34 = load i32**, i32*** @loggers, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32* @rcu_access_pointer(i32 %42)
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @request_module(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %33
  %50 = call i32 (...) @rcu_read_lock()
  %51 = load i32**, i32*** @loggers, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.nf_logger* @rcu_dereference(i32 %59)
  store %struct.nf_logger* %60, %struct.nf_logger** %6, align 8
  %61 = load %struct.nf_logger*, %struct.nf_logger** %6, align 8
  %62 = icmp eq %struct.nf_logger* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %49
  br label %72

64:                                               ; preds = %49
  %65 = load %struct.nf_logger*, %struct.nf_logger** %6, align 8
  %66 = getelementptr inbounds %struct.nf_logger, %struct.nf_logger* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @try_module_get(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %64
  br label %72

72:                                               ; preds = %71, %63
  %73 = call i32 (...) @rcu_read_unlock()
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %32, %27, %19
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @nf_logger_put(i32, i32) #1

declare dso_local i32* @rcu_access_pointer(i32) #1

declare dso_local i32 @request_module(i8*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_logger* @rcu_dereference(i32) #1

declare dso_local i64 @try_module_get(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

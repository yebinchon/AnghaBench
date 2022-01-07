; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_log.c_nf_log_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_log.c_nf_log_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nf_logger = type { i64 }

@init_net = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@nf_log_mutex = common dso_local global i32 0, align 4
@NFPROTO_UNSPEC = common dso_local global i64 0, align 8
@NFPROTO_NUMPROTO = common dso_local global i32 0, align 4
@loggers = common dso_local global i32** null, align 8
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_log_register(i64 %0, %struct.nf_logger* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.nf_logger*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.nf_logger* %1, %struct.nf_logger** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* %4, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @init_net, i32 0, i32 0, i32 0), align 4
  %10 = call i64 @ARRAY_SIZE(i32 %9)
  %11 = icmp uge i64 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %102

15:                                               ; preds = %2
  %16 = call i32 @mutex_lock(i32* @nf_log_mutex)
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @NFPROTO_UNSPEC, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %71

20:                                               ; preds = %15
  %21 = load i64, i64* @NFPROTO_UNSPEC, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %44, %20
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @NFPROTO_NUMPROTO, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %23
  %28 = load i32**, i32*** @loggers, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.nf_logger*, %struct.nf_logger** %5, align 8
  %34 = getelementptr inbounds %struct.nf_logger, %struct.nf_logger* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @rcu_access_pointer(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %27
  %41 = load i32, i32* @EEXIST, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %99

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %23

47:                                               ; preds = %23
  %48 = load i64, i64* @NFPROTO_UNSPEC, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %67, %47
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @NFPROTO_NUMPROTO, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load i32**, i32*** @loggers, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.nf_logger*, %struct.nf_logger** %5, align 8
  %61 = getelementptr inbounds %struct.nf_logger, %struct.nf_logger* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nf_logger*, %struct.nf_logger** %5, align 8
  %66 = call i32 @rcu_assign_pointer(i32 %64, %struct.nf_logger* %65)
  br label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %50

70:                                               ; preds = %50
  br label %98

71:                                               ; preds = %15
  %72 = load i32**, i32*** @loggers, align 8
  %73 = load i64, i64* %4, align 8
  %74 = getelementptr inbounds i32*, i32** %72, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.nf_logger*, %struct.nf_logger** %5, align 8
  %77 = getelementptr inbounds %struct.nf_logger, %struct.nf_logger* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @rcu_access_pointer(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = load i32, i32* @EEXIST, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %7, align 4
  br label %99

86:                                               ; preds = %71
  %87 = load i32**, i32*** @loggers, align 8
  %88 = load i64, i64* %4, align 8
  %89 = getelementptr inbounds i32*, i32** %87, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.nf_logger*, %struct.nf_logger** %5, align 8
  %92 = getelementptr inbounds %struct.nf_logger, %struct.nf_logger* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.nf_logger*, %struct.nf_logger** %5, align 8
  %97 = call i32 @rcu_assign_pointer(i32 %95, %struct.nf_logger* %96)
  br label %98

98:                                               ; preds = %86, %70
  br label %99

99:                                               ; preds = %98, %83, %40
  %100 = call i32 @mutex_unlock(i32* @nf_log_mutex)
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %99, %12
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @rcu_access_pointer(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.nf_logger*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

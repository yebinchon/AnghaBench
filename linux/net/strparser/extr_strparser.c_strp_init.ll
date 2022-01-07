; ModuleID = '/home/carl/AnghaBench/linux/net/strparser/extr_strparser.c_strp_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/strparser/extr_strparser.c_strp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strparser = type { i32, i32, %struct.TYPE_2__, %struct.sock* }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i32, i32 }
%struct.sock = type { i32 }
%struct.strp_callbacks = type { i64, i64, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@strp_sock_lock = common dso_local global i32 0, align 4
@strp_sock_unlock = common dso_local global i32 0, align 4
@default_read_sock_done = common dso_local global i32 0, align 4
@strp_abort_strp = common dso_local global i32 0, align 4
@strp_msg_timeout = common dso_local global i32 0, align 4
@strp_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strp_init(%struct.strparser* %0, %struct.sock* %1, %struct.strp_callbacks* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strparser*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.strp_callbacks*, align 8
  store %struct.strparser* %0, %struct.strparser** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.strp_callbacks* %2, %struct.strp_callbacks** %7, align 8
  %8 = load %struct.strp_callbacks*, %struct.strp_callbacks** %7, align 8
  %9 = icmp ne %struct.strp_callbacks* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = load %struct.strp_callbacks*, %struct.strp_callbacks** %7, align 8
  %12 = getelementptr inbounds %struct.strp_callbacks, %struct.strp_callbacks* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.strp_callbacks*, %struct.strp_callbacks** %7, align 8
  %17 = getelementptr inbounds %struct.strp_callbacks, %struct.strp_callbacks* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %10, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %122

23:                                               ; preds = %15
  %24 = load %struct.sock*, %struct.sock** %6, align 8
  %25 = icmp ne %struct.sock* %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %23
  %27 = load %struct.strp_callbacks*, %struct.strp_callbacks** %7, align 8
  %28 = getelementptr inbounds %struct.strp_callbacks, %struct.strp_callbacks* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.strp_callbacks*, %struct.strp_callbacks** %7, align 8
  %33 = getelementptr inbounds %struct.strp_callbacks, %struct.strp_callbacks* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %122

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %23
  %41 = load %struct.strparser*, %struct.strparser** %5, align 8
  %42 = call i32 @memset(%struct.strparser* %41, i32 0, i32 48)
  %43 = load %struct.sock*, %struct.sock** %6, align 8
  %44 = load %struct.strparser*, %struct.strparser** %5, align 8
  %45 = getelementptr inbounds %struct.strparser, %struct.strparser* %44, i32 0, i32 3
  store %struct.sock* %43, %struct.sock** %45, align 8
  %46 = load %struct.strp_callbacks*, %struct.strp_callbacks** %7, align 8
  %47 = getelementptr inbounds %struct.strp_callbacks, %struct.strp_callbacks* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %54

51:                                               ; preds = %40
  %52 = load i32, i32* @strp_sock_lock, align 4
  %53 = sext i32 %52 to i64
  br label %54

54:                                               ; preds = %51, %50
  %55 = phi i64 [ %48, %50 ], [ %53, %51 ]
  %56 = trunc i64 %55 to i32
  %57 = load %struct.strparser*, %struct.strparser** %5, align 8
  %58 = getelementptr inbounds %struct.strparser, %struct.strparser* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 5
  store i32 %56, i32* %59, align 4
  %60 = load %struct.strp_callbacks*, %struct.strp_callbacks** %7, align 8
  %61 = getelementptr inbounds %struct.strp_callbacks, %struct.strp_callbacks* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %68

65:                                               ; preds = %54
  %66 = load i32, i32* @strp_sock_unlock, align 4
  %67 = sext i32 %66 to i64
  br label %68

68:                                               ; preds = %65, %64
  %69 = phi i64 [ %62, %64 ], [ %67, %65 ]
  %70 = trunc i64 %69 to i32
  %71 = load %struct.strparser*, %struct.strparser** %5, align 8
  %72 = getelementptr inbounds %struct.strparser, %struct.strparser* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 4
  store i32 %70, i32* %73, align 8
  %74 = load %struct.strp_callbacks*, %struct.strp_callbacks** %7, align 8
  %75 = getelementptr inbounds %struct.strp_callbacks, %struct.strp_callbacks* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.strparser*, %struct.strparser** %5, align 8
  %78 = getelementptr inbounds %struct.strparser, %struct.strparser* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  store i64 %76, i64* %79, align 8
  %80 = load %struct.strp_callbacks*, %struct.strp_callbacks** %7, align 8
  %81 = getelementptr inbounds %struct.strp_callbacks, %struct.strp_callbacks* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.strparser*, %struct.strparser** %5, align 8
  %84 = getelementptr inbounds %struct.strparser, %struct.strparser* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store i64 %82, i64* %85, align 8
  %86 = load %struct.strp_callbacks*, %struct.strp_callbacks** %7, align 8
  %87 = getelementptr inbounds %struct.strp_callbacks, %struct.strp_callbacks* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %68
  br label %94

91:                                               ; preds = %68
  %92 = load i32, i32* @default_read_sock_done, align 4
  %93 = sext i32 %92 to i64
  br label %94

94:                                               ; preds = %91, %90
  %95 = phi i64 [ %88, %90 ], [ %93, %91 ]
  %96 = trunc i64 %95 to i32
  %97 = load %struct.strparser*, %struct.strparser** %5, align 8
  %98 = getelementptr inbounds %struct.strparser, %struct.strparser* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 4
  %100 = load %struct.strp_callbacks*, %struct.strp_callbacks** %7, align 8
  %101 = getelementptr inbounds %struct.strp_callbacks, %struct.strp_callbacks* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %108

105:                                              ; preds = %94
  %106 = load i32, i32* @strp_abort_strp, align 4
  %107 = sext i32 %106 to i64
  br label %108

108:                                              ; preds = %105, %104
  %109 = phi i64 [ %102, %104 ], [ %107, %105 ]
  %110 = trunc i64 %109 to i32
  %111 = load %struct.strparser*, %struct.strparser** %5, align 8
  %112 = getelementptr inbounds %struct.strparser, %struct.strparser* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load %struct.strparser*, %struct.strparser** %5, align 8
  %115 = getelementptr inbounds %struct.strparser, %struct.strparser* %114, i32 0, i32 1
  %116 = load i32, i32* @strp_msg_timeout, align 4
  %117 = call i32 @INIT_DELAYED_WORK(i32* %115, i32 %116)
  %118 = load %struct.strparser*, %struct.strparser** %5, align 8
  %119 = getelementptr inbounds %struct.strparser, %struct.strparser* %118, i32 0, i32 0
  %120 = load i32, i32* @strp_work, align 4
  %121 = call i32 @INIT_WORK(i32* %119, i32 %120)
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %108, %36, %20
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @memset(%struct.strparser*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

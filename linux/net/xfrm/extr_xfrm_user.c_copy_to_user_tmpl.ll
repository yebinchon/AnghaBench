; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_copy_to_user_tmpl.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_copy_to_user_tmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, %struct.xfrm_tmpl* }
%struct.xfrm_tmpl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.xfrm_user_tmpl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@XFRM_MAX_DEPTH = common dso_local global i32 0, align 4
@XFRMA_TMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*, %struct.sk_buff*)* @copy_to_user_tmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_to_user_tmpl(%struct.xfrm_policy* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_policy*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfrm_user_tmpl*, align 8
  %11 = alloca %struct.xfrm_tmpl*, align 8
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load i32, i32* @XFRM_MAX_DEPTH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca %struct.xfrm_user_tmpl, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %17 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %103

21:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %90, %21
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %25 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %93

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %15, i64 %30
  store %struct.xfrm_user_tmpl* %31, %struct.xfrm_user_tmpl** %10, align 8
  %32 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %33 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %32, i32 0, i32 1
  %34 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %34, i64 %36
  store %struct.xfrm_tmpl* %37, %struct.xfrm_tmpl** %11, align 8
  %38 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %10, align 8
  %39 = call i32 @memset(%struct.xfrm_user_tmpl* %38, i32 0, i32 40)
  %40 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %10, align 8
  %41 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %40, i32 0, i32 9
  %42 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %11, align 8
  %43 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %42, i32 0, i32 9
  %44 = call i32 @memcpy(i32* %41, i32* %43, i32 4)
  %45 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %11, align 8
  %46 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %10, align 8
  %49 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 4
  %50 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %10, align 8
  %51 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %50, i32 0, i32 7
  %52 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %11, align 8
  %53 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %52, i32 0, i32 7
  %54 = call i32 @memcpy(i32* %51, i32* %53, i32 4)
  %55 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %11, align 8
  %56 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %10, align 8
  %59 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 4
  %60 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %11, align 8
  %61 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %10, align 8
  %64 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %11, align 8
  %66 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %10, align 8
  %69 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %11, align 8
  %71 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %10, align 8
  %74 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %11, align 8
  %76 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %10, align 8
  %79 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %11, align 8
  %81 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %10, align 8
  %84 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %11, align 8
  %86 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %10, align 8
  %89 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %28
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %22

93:                                               ; preds = %22
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = load i32, i32* @XFRMA_TMPL, align 4
  %96 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %97 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = mul i64 40, %99
  %101 = trunc i64 %100 to i32
  %102 = call i32 @nla_put(%struct.sk_buff* %94, i32 %95, i32 %101, %struct.xfrm_user_tmpl* %15)
  store i32 %102, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %103

103:                                              ; preds = %93, %20
  %104 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.xfrm_user_tmpl*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, %struct.xfrm_user_tmpl*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

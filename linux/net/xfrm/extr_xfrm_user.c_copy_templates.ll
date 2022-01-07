; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_copy_templates.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_copy_templates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, %struct.xfrm_tmpl* }
%struct.xfrm_tmpl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfrm_user_tmpl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_policy*, %struct.xfrm_user_tmpl*, i32)* @copy_templates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_templates(%struct.xfrm_policy* %0, %struct.xfrm_user_tmpl* %1, i32 %2) #0 {
  %4 = alloca %struct.xfrm_policy*, align 8
  %5 = alloca %struct.xfrm_user_tmpl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfrm_tmpl*, align 8
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %4, align 8
  store %struct.xfrm_user_tmpl* %1, %struct.xfrm_user_tmpl** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %11 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %90, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %95

16:                                               ; preds = %12
  %17 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %18 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %17, i32 0, i32 1
  %19 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %19, i64 %21
  store %struct.xfrm_tmpl* %22, %struct.xfrm_tmpl** %8, align 8
  %23 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %24 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %23, i32 0, i32 10
  %25 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %5, align 8
  %26 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %25, i32 0, i32 9
  %27 = call i32 @memcpy(i32* %24, i32* %26, i32 4)
  %28 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %29 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %28, i32 0, i32 9
  %30 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %5, align 8
  %31 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %30, i32 0, i32 8
  %32 = call i32 @memcpy(i32* %29, i32* %31, i32 4)
  %33 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %5, align 8
  %34 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %37 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 4
  %38 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %5, align 8
  %39 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %42 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %5, align 8
  %44 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %47 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %5, align 8
  %49 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %52 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %5, align 8
  %54 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %57 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %5, align 8
  %59 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %62 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %5, align 8
  %64 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %67 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %69 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %72 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %70, %73
  %75 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %76 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %74, %77
  %79 = xor i32 %78, -1
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %84 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %5, align 8
  %86 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %8, align 8
  %89 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %16
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  %93 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %5, align 8
  %94 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %93, i32 1
  store %struct.xfrm_user_tmpl* %94, %struct.xfrm_user_tmpl** %5, align 8
  br label %12

95:                                               ; preds = %12
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

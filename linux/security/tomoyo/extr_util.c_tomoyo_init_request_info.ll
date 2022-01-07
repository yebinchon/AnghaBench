; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_util.c_tomoyo_init_request_info.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_util.c_tomoyo_init_request_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_request_info = type { i32, i32, i32, %struct.tomoyo_domain_info* }
%struct.tomoyo_domain_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_init_request_info(%struct.tomoyo_request_info* %0, %struct.tomoyo_domain_info* %1, i32 %2) #0 {
  %4 = alloca %struct.tomoyo_request_info*, align 8
  %5 = alloca %struct.tomoyo_domain_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tomoyo_request_info* %0, %struct.tomoyo_request_info** %4, align 8
  store %struct.tomoyo_domain_info* %1, %struct.tomoyo_domain_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %9 = call i32 @memset(%struct.tomoyo_request_info* %8, i32 0, i32 24)
  %10 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %5, align 8
  %11 = icmp ne %struct.tomoyo_domain_info* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = call %struct.tomoyo_domain_info* (...) @tomoyo_domain()
  store %struct.tomoyo_domain_info* %13, %struct.tomoyo_domain_info** %5, align 8
  br label %14

14:                                               ; preds = %12, %3
  %15 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %5, align 8
  %16 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %17 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %16, i32 0, i32 3
  store %struct.tomoyo_domain_info* %15, %struct.tomoyo_domain_info** %17, align 8
  %18 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %5, align 8
  %19 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %23 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %26 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %5, align 8
  %28 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @tomoyo_get_mode(i32 %29, i32 %30, i32 %31)
  %33 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %34 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %4, align 8
  %36 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  ret i32 %37
}

declare dso_local i32 @memset(%struct.tomoyo_request_info*, i32, i32) #1

declare dso_local %struct.tomoyo_domain_info* @tomoyo_domain(...) #1

declare dso_local i32 @tomoyo_get_mode(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ccidslib....dccp.h_dccp_update_gsr.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ccidslib....dccp.h_dccp_update_gsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dccp_sock = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @dccp_update_gsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_update_gsr(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dccp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %6)
  store %struct.dccp_sock* %7, %struct.dccp_sock** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %10 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @after48(i32 %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %17 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %20 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ADD48(i32 %21, i32 1)
  %23 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %24 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 4
  %27 = call i32 @SUB48(i32 %22, i32 %26)
  %28 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %29 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %31 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %34 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @before48(i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %18
  %39 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %40 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %43 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %18
  %45 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %46 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %49 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 3, %50
  %52 = sdiv i32 %51, 4
  %53 = call i32 @ADD48(i32 %47, i32 %52)
  %54 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %55 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  ret void
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i64 @after48(i32, i32) #1

declare dso_local i32 @SUB48(i32, i32) #1

declare dso_local i32 @ADD48(i32, i32) #1

declare dso_local i64 @before48(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

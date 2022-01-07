; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_hdlr_ackvec.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_hdlr_ackvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dccp_sock = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i64, i32)* @dccp_hdlr_ackvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_hdlr_ackvec(%struct.sock* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dccp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %9)
  store %struct.dccp_sock* %10, %struct.dccp_sock** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %18 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = call i32 (...) @gfp_any()
  %23 = call i32* @dccp_ackvec_alloc(i32 %22)
  %24 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %25 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %27 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %47

33:                                               ; preds = %21
  br label %45

34:                                               ; preds = %16, %13
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %39 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @dccp_ackvec_free(i32* %40)
  %42 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %43 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %37, %34
  br label %45

45:                                               ; preds = %44, %33
  br label %46

46:                                               ; preds = %45, %3
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %30
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32* @dccp_ackvec_alloc(i32) #1

declare dso_local i32 @gfp_any(...) #1

declare dso_local i32 @dccp_ackvec_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

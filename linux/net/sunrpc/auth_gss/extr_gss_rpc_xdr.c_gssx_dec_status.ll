; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_xdr.c_gssx_dec_status.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_xdr.c_gssx_dec_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.gssx_status = type { i32, i32, i32, i32, i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.gssx_status*)* @gssx_dec_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gssx_dec_status(%struct.xdr_stream* %0, %struct.gssx_status* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.gssx_status*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.gssx_status* %1, %struct.gssx_status** %5, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = call i32* @xdr_inline_decode(%struct.xdr_stream* %8, i32 8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOSPC, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %79

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.gssx_status*, %struct.gssx_status** %5, align 8
  %21 = getelementptr inbounds %struct.gssx_status, %struct.gssx_status* %20, i32 0, i32 6
  %22 = call i32* @xdr_decode_hyper(i32* %19, i32* %21)
  store i32* %22, i32** %6, align 8
  %23 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %24 = load %struct.gssx_status*, %struct.gssx_status** %5, align 8
  %25 = getelementptr inbounds %struct.gssx_status, %struct.gssx_status* %24, i32 0, i32 5
  %26 = call i32 @gssx_dec_buffer(%struct.xdr_stream* %23, i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %79

31:                                               ; preds = %18
  %32 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %33 = call i32* @xdr_inline_decode(%struct.xdr_stream* %32, i32 8)
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp eq i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOSPC, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %79

42:                                               ; preds = %31
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.gssx_status*, %struct.gssx_status** %5, align 8
  %45 = getelementptr inbounds %struct.gssx_status, %struct.gssx_status* %44, i32 0, i32 4
  %46 = call i32* @xdr_decode_hyper(i32* %43, i32* %45)
  store i32* %46, i32** %6, align 8
  %47 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %48 = load %struct.gssx_status*, %struct.gssx_status** %5, align 8
  %49 = getelementptr inbounds %struct.gssx_status, %struct.gssx_status* %48, i32 0, i32 3
  %50 = call i32 @gssx_dec_buffer(%struct.xdr_stream* %47, i32* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %79

55:                                               ; preds = %42
  %56 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %57 = load %struct.gssx_status*, %struct.gssx_status** %5, align 8
  %58 = getelementptr inbounds %struct.gssx_status, %struct.gssx_status* %57, i32 0, i32 2
  %59 = call i32 @gssx_dec_buffer(%struct.xdr_stream* %56, i32* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %79

64:                                               ; preds = %55
  %65 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %66 = load %struct.gssx_status*, %struct.gssx_status** %5, align 8
  %67 = getelementptr inbounds %struct.gssx_status, %struct.gssx_status* %66, i32 0, i32 1
  %68 = call i32 @gssx_dec_buffer(%struct.xdr_stream* %65, i32* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %79

73:                                               ; preds = %64
  %74 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %75 = load %struct.gssx_status*, %struct.gssx_status** %5, align 8
  %76 = getelementptr inbounds %struct.gssx_status, %struct.gssx_status* %75, i32 0, i32 0
  %77 = call i32 @dummy_dec_opt_array(%struct.xdr_stream* %74, i32* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %73, %71, %62, %53, %39, %29, %15
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @xdr_decode_hyper(i32*, i32*) #1

declare dso_local i32 @gssx_dec_buffer(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @dummy_dec_opt_array(%struct.xdr_stream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_clnt4xdr.c_encode_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_clnt4xdr.c_encode_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nlm_cookie = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nlm_cookie*)* @encode_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_cookie(%struct.xdr_stream* %0, %struct.nlm_cookie* %1) #0 {
  %3 = alloca %struct.xdr_stream*, align 8
  %4 = alloca %struct.nlm_cookie*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %3, align 8
  store %struct.nlm_cookie* %1, %struct.nlm_cookie** %4, align 8
  %5 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %6 = load %struct.nlm_cookie*, %struct.nlm_cookie** %4, align 8
  %7 = getelementptr inbounds %struct.nlm_cookie, %struct.nlm_cookie* %6, i32 0, i32 1
  %8 = load %struct.nlm_cookie*, %struct.nlm_cookie** %4, align 8
  %9 = getelementptr inbounds %struct.nlm_cookie, %struct.nlm_cookie* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @encode_netobj(%struct.xdr_stream* %5, i32* %7, i32 %10)
  ret void
}

declare dso_local i32 @encode_netobj(%struct.xdr_stream*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_compound_in_session.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_compound_in_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compound_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nfs4_sessionid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compound_state*, %struct.nfs4_sessionid*)* @nfsd4_compound_in_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_compound_in_session(%struct.nfsd4_compound_state* %0, %struct.nfs4_sessionid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd4_compound_state*, align 8
  %5 = alloca %struct.nfs4_sessionid*, align 8
  store %struct.nfsd4_compound_state* %0, %struct.nfsd4_compound_state** %4, align 8
  store %struct.nfs4_sessionid* %1, %struct.nfs4_sessionid** %5, align 8
  %6 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %4, align 8
  %7 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

11:                                               ; preds = %2
  %12 = load %struct.nfs4_sessionid*, %struct.nfs4_sessionid** %5, align 8
  %13 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %4, align 8
  %14 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @memcmp(%struct.nfs4_sessionid* %12, i32* %16, i32 4)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %11, %10
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @memcmp(%struct.nfs4_sessionid*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

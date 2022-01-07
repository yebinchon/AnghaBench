; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_set_owner_w.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_set_owner_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { %struct.TYPE_7__*, i64, %struct.sctp_association* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.sctp_association = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.sctp_chunk* }

@sctp_wfree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_chunk*)* @sctp_set_owner_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_set_owner_w(%struct.sctp_chunk* %0) #0 {
  %2 = alloca %struct.sctp_chunk*, align 8
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.sctp_chunk* %0, %struct.sctp_chunk** %2, align 8
  %5 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %6 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %5, i32 0, i32 2
  %7 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  store %struct.sctp_association* %7, %struct.sctp_association** %3, align 8
  %8 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %9 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %4, align 8
  %12 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %13 = call i32 @sctp_association_hold(%struct.sctp_association* %12)
  %14 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %15 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %20 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @sctp_auth_shkey_hold(i64 %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %25 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = call i32 @skb_set_owner_w(%struct.TYPE_7__* %26, %struct.sock* %27)
  %29 = load i32, i32* @sctp_wfree, align 4
  %30 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %31 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 4
  %34 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %35 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %36 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = call %struct.TYPE_6__* @skb_shinfo(%struct.TYPE_7__* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store %struct.sctp_chunk* %34, %struct.sctp_chunk** %39, align 8
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 1
  %42 = call i32 @refcount_add(i32 24, i32* %41)
  %43 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %44 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 24
  %50 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %51 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 8
  %56 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %57 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 24
  %63 = load %struct.sock*, %struct.sock** %4, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  %69 = load %struct.sock*, %struct.sock** %4, align 8
  %70 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %71 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @sk_mem_charge(%struct.sock* %69, i32 %74)
  ret void
}

declare dso_local i32 @sctp_association_hold(%struct.sctp_association*) #1

declare dso_local i32 @sctp_auth_shkey_hold(i64) #1

declare dso_local i32 @skb_set_owner_w(%struct.TYPE_7__*, %struct.sock*) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.TYPE_7__*) #1

declare dso_local i32 @refcount_add(i32, i32*) #1

declare dso_local i32 @sk_mem_charge(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

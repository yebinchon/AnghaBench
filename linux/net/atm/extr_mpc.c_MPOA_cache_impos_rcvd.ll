; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_MPOA_cache_impos_rcvd.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_mpc.c_MPOA_cache_impos_rcvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_message = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.mpoa_client = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 (i32*)*, i32 (i32*, %struct.mpoa_client*)*, i32 (i32*, i64)*, i32* (%struct.k_message*, %struct.mpoa_client*)*, i32* (i32, %struct.mpoa_client*)* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"(%s) entry = %p, holding_time = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_message*, %struct.mpoa_client*)* @MPOA_cache_impos_rcvd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MPOA_cache_impos_rcvd(%struct.k_message* %0, %struct.mpoa_client* %1) #0 {
  %3 = alloca %struct.k_message*, align 8
  %4 = alloca %struct.mpoa_client*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.k_message* %0, %struct.k_message** %3, align 8
  store %struct.mpoa_client* %1, %struct.mpoa_client** %4, align 8
  %7 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %8 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  %11 = load i32* (i32, %struct.mpoa_client*)*, i32* (i32, %struct.mpoa_client*)** %10, align 8
  %12 = load %struct.k_message*, %struct.k_message** %3, align 8
  %13 = getelementptr inbounds %struct.k_message, %struct.k_message* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %18 = call i32* %11(i32 %16, %struct.mpoa_client* %17)
  store i32* %18, i32** %6, align 8
  %19 = load %struct.k_message*, %struct.k_message** %3, align 8
  %20 = getelementptr inbounds %struct.k_message, %struct.k_message* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  %24 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %25 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %28, i32* %29, i64 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %2
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %39 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = load i32* (%struct.k_message*, %struct.mpoa_client*)*, i32* (%struct.k_message*, %struct.mpoa_client*)** %41, align 8
  %43 = load %struct.k_message*, %struct.k_message** %3, align 8
  %44 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %45 = call i32* %42(%struct.k_message* %43, %struct.mpoa_client* %44)
  store i32* %45, i32** %6, align 8
  %46 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %47 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32 (i32*)*, i32 (i32*)** %49, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 %50(i32* %51)
  br label %87

53:                                               ; preds = %34, %2
  %54 = load i64, i64* %5, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %58 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load i32 (i32*, i64)*, i32 (i32*, i64)** %60, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i32 %61(i32* %62, i64 %63)
  br label %87

65:                                               ; preds = %53
  %66 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %67 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %66, i32 0, i32 1
  %68 = call i32 @write_lock_irq(i32* %67)
  %69 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %70 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32 (i32*, %struct.mpoa_client*)*, i32 (i32*, %struct.mpoa_client*)** %72, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %76 = call i32 %73(i32* %74, %struct.mpoa_client* %75)
  %77 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %78 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %77, i32 0, i32 1
  %79 = call i32 @write_unlock_irq(i32* %78)
  %80 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %81 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32 (i32*)*, i32 (i32*)** %83, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 %84(i32* %85)
  br label %87

87:                                               ; preds = %65, %56, %37
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i32*, i64) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

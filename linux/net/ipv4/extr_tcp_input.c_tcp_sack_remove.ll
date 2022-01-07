; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_sack_remove.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_sack_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { %struct.TYPE_2__, %struct.tcp_sack_block*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.tcp_sack_block = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_sock*)* @tcp_sack_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_sack_remove(%struct.tcp_sock* %0) #0 {
  %2 = alloca %struct.tcp_sock*, align 8
  %3 = alloca %struct.tcp_sack_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tcp_sock* %0, %struct.tcp_sock** %2, align 8
  %7 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %8 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %7, i32 0, i32 1
  %9 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %8, align 8
  %10 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %9, i64 0
  store %struct.tcp_sack_block* %10, %struct.tcp_sack_block** %3, align 8
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %12 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %16 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %15, i32 0, i32 3
  %17 = call i64 @RB_EMPTY_ROOT(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %21 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  br label %84

23:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %74, %71, %23
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %79

28:                                               ; preds = %24
  %29 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %30 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %3, align 8
  %33 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @before(i32 %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %74, label %37

37:                                               ; preds = %28
  %38 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %39 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %3, align 8
  %42 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @before(i32 %40, i32 %43)
  %45 = call i32 @WARN_ON(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %68, %37
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %48
  %53 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %54 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %53, i32 0, i32 1
  %55 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %55, i64 %58
  %60 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %61 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %60, i32 0, i32 1
  %62 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %62, i64 %64
  %66 = bitcast %struct.tcp_sack_block* %59 to i8*
  %67 = bitcast %struct.tcp_sack_block* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 8, i1 false)
  br label %68

68:                                               ; preds = %52
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %48

71:                                               ; preds = %48
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %4, align 4
  br label %24

74:                                               ; preds = %28
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  %77 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %3, align 8
  %78 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %77, i32 1
  store %struct.tcp_sack_block* %78, %struct.tcp_sack_block** %3, align 8
  br label %24

79:                                               ; preds = %24
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.tcp_sock*, %struct.tcp_sock** %2, align 8
  %82 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  br label %84

84:                                               ; preds = %79, %19
  ret void
}

declare dso_local i64 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @before(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

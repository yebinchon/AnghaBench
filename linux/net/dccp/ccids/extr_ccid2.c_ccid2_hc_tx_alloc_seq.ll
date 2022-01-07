; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid2.c_ccid2_hc_tx_alloc_seq.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid2.c_ccid2_hc_tx_alloc_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccid2_hc_tx_sock = type { i32, %struct.ccid2_seq**, %struct.ccid2_seq*, %struct.ccid2_seq* }
%struct.ccid2_seq = type { %struct.ccid2_seq*, %struct.ccid2_seq* }

@ENOMEM = common dso_local global i32 0, align 4
@CCID2_SEQBUF_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccid2_hc_tx_sock*)* @ccid2_hc_tx_alloc_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccid2_hc_tx_alloc_seq(%struct.ccid2_hc_tx_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccid2_hc_tx_sock*, align 8
  %4 = alloca %struct.ccid2_seq*, align 8
  %5 = alloca i32, align 4
  store %struct.ccid2_hc_tx_sock* %0, %struct.ccid2_hc_tx_sock** %3, align 8
  %6 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %7 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = icmp uge i64 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %121

14:                                               ; preds = %1
  %15 = load i32, i32* @CCID2_SEQBUF_LEN, align 4
  %16 = call i32 (...) @gfp_any()
  %17 = call %struct.ccid2_seq* @kmalloc_array(i32 %15, i32 16, i32 %16)
  store %struct.ccid2_seq* %17, %struct.ccid2_seq** %4, align 8
  %18 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %19 = icmp eq %struct.ccid2_seq* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %121

23:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %50, %23
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @CCID2_SEQBUF_LEN, align 4
  %27 = sub nsw i32 %26, 1
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %24
  %30 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %30, i64 %33
  %35 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %35, i64 %37
  %39 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %38, i32 0, i32 0
  store %struct.ccid2_seq* %34, %struct.ccid2_seq** %39, align 8
  %40 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %40, i64 %42
  %44 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %44, i64 %47
  %49 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %48, i32 0, i32 1
  store %struct.ccid2_seq* %43, %struct.ccid2_seq** %49, align 8
  br label %50

50:                                               ; preds = %29
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %24

53:                                               ; preds = %24
  %54 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %55 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %56 = load i32, i32* @CCID2_SEQBUF_LEN, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %55, i64 %58
  %60 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %59, i32 0, i32 0
  store %struct.ccid2_seq* %54, %struct.ccid2_seq** %60, align 8
  %61 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %62 = load i32, i32* @CCID2_SEQBUF_LEN, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %61, i64 %64
  %66 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %67 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %66, i32 0, i32 1
  store %struct.ccid2_seq* %65, %struct.ccid2_seq** %67, align 8
  %68 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %69 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %53
  %73 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %74 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %75 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %74, i32 0, i32 2
  store %struct.ccid2_seq* %73, %struct.ccid2_seq** %75, align 8
  %76 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %77 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %76, i32 0, i32 3
  store %struct.ccid2_seq* %73, %struct.ccid2_seq** %77, align 8
  br label %107

78:                                               ; preds = %53
  %79 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %80 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %81 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %80, i32 0, i32 3
  %82 = load %struct.ccid2_seq*, %struct.ccid2_seq** %81, align 8
  %83 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %82, i32 0, i32 0
  store %struct.ccid2_seq* %79, %struct.ccid2_seq** %83, align 8
  %84 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %85 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %84, i32 0, i32 3
  %86 = load %struct.ccid2_seq*, %struct.ccid2_seq** %85, align 8
  %87 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %88 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %87, i32 0, i32 1
  store %struct.ccid2_seq* %86, %struct.ccid2_seq** %88, align 8
  %89 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %90 = load i32, i32* @CCID2_SEQBUF_LEN, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %89, i64 %92
  %94 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %95 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %94, i32 0, i32 2
  %96 = load %struct.ccid2_seq*, %struct.ccid2_seq** %95, align 8
  %97 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %96, i32 0, i32 1
  store %struct.ccid2_seq* %93, %struct.ccid2_seq** %97, align 8
  %98 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %99 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %98, i32 0, i32 2
  %100 = load %struct.ccid2_seq*, %struct.ccid2_seq** %99, align 8
  %101 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %102 = load i32, i32* @CCID2_SEQBUF_LEN, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %101, i64 %104
  %106 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %105, i32 0, i32 0
  store %struct.ccid2_seq* %100, %struct.ccid2_seq** %106, align 8
  br label %107

107:                                              ; preds = %78, %72
  %108 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %109 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %110 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %109, i32 0, i32 1
  %111 = load %struct.ccid2_seq**, %struct.ccid2_seq*** %110, align 8
  %112 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %113 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.ccid2_seq*, %struct.ccid2_seq** %111, i64 %115
  store %struct.ccid2_seq* %108, %struct.ccid2_seq** %116, align 8
  %117 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %118 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %107, %20, %11
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.ccid2_seq* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @gfp_any(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

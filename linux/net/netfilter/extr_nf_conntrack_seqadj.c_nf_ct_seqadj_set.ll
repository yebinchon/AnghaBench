; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_seqadj.c_nf_ct_seqadj_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_seqadj.c_nf_ct_seqadj_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32, i32 }
%struct.nf_conn_seqadj = type { %struct.nf_ct_seqadj* }
%struct.nf_ct_seqadj = type { i64, i64, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Missing nfct_seqadj_ext_add() setup call\0A\00", align 1
@IPS_SEQ_ADJUST_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_ct_seqadj_set(%struct.nf_conn* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.nf_conn_seqadj*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nf_ct_seqadj*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %14 = call %struct.nf_conn_seqadj* @nfct_seqadj(%struct.nf_conn* %13)
  store %struct.nf_conn_seqadj* %14, %struct.nf_conn_seqadj** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @CTINFO2DIR(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %77

20:                                               ; preds = %4
  %21 = load %struct.nf_conn_seqadj*, %struct.nf_conn_seqadj** %10, align 8
  %22 = icmp ne %struct.nf_conn_seqadj* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %77

29:                                               ; preds = %20
  %30 = load i32, i32* @IPS_SEQ_ADJUST_BIT, align 4
  %31 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %32 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %31, i32 0, i32 1
  %33 = call i32 @set_bit(i32 %30, i32* %32)
  %34 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %35 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_bh(i32* %35)
  %37 = load %struct.nf_conn_seqadj*, %struct.nf_conn_seqadj** %10, align 8
  %38 = getelementptr inbounds %struct.nf_conn_seqadj, %struct.nf_conn_seqadj* %37, i32 0, i32 0
  %39 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %39, i64 %41
  store %struct.nf_ct_seqadj* %42, %struct.nf_ct_seqadj** %12, align 8
  %43 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %12, align 8
  %44 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %12, align 8
  %47 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %29
  %51 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %12, align 8
  %52 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @ntohl(i32 %54)
  %56 = call i64 @before(i32 %53, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %50, %29
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @ntohl(i32 %59)
  %61 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %12, align 8
  %62 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %12, align 8
  %64 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %12, align 8
  %67 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %12, align 8
  %70 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, %68
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %58, %50
  %74 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %75 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock_bh(i32* %75)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %73, %27, %19
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.nf_conn_seqadj* @nfct_seqadj(%struct.nf_conn*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @before(i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

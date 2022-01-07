; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_ct_tmpl_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_ct_tmpl_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { i32 }
%struct.nf_conntrack_zone = type { i32 }

@ARCH_KMALLOC_MINALIGN = common dso_local global i64 0, align 8
@NFCT_INFOMASK = common dso_local global i64 0, align 8
@IPS_TEMPLATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nf_conn* @nf_ct_tmpl_alloc(%struct.net* %0, %struct.nf_conntrack_zone* %1, i32 %2) #0 {
  %4 = alloca %struct.nf_conn*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.nf_conntrack_zone*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca %struct.nf_conn*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.nf_conntrack_zone* %1, %struct.nf_conntrack_zone** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* @ARCH_KMALLOC_MINALIGN, align 8
  %11 = load i64, i64* @NFCT_INFOMASK, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %3
  %14 = load i64, i64* @NFCT_INFOMASK, align 8
  %15 = add i64 16, %14
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.nf_conn* @kzalloc(i32 %16, i32 %17)
  store %struct.nf_conn* %18, %struct.nf_conn** %8, align 8
  %19 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %20 = icmp ne %struct.nf_conn* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  store %struct.nf_conn* null, %struct.nf_conn** %4, align 8
  br label %71

22:                                               ; preds = %13
  %23 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  store %struct.nf_conn* %23, %struct.nf_conn** %9, align 8
  %24 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %25 = ptrtoint %struct.nf_conn* %24 to i64
  %26 = call i64 @NFCT_ALIGN(i64 %25)
  %27 = inttoptr i64 %26 to %struct.nf_conn*
  store %struct.nf_conn* %27, %struct.nf_conn** %8, align 8
  %28 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %29 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %30 = icmp ne %struct.nf_conn* %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %22
  %32 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %33 = ptrtoint %struct.nf_conn* %32 to i64
  %34 = call i64 @NFCT_ALIGN(i64 %33)
  %35 = inttoptr i64 %34 to %struct.nf_conn*
  store %struct.nf_conn* %35, %struct.nf_conn** %8, align 8
  %36 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %37 = bitcast %struct.nf_conn* %36 to i8*
  %38 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %39 = bitcast %struct.nf_conn* %38 to i8*
  %40 = ptrtoint i8* %37 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  %44 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %45 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  br label %47

47:                                               ; preds = %31, %22
  br label %55

48:                                               ; preds = %3
  %49 = load i32, i32* %7, align 4
  %50 = call %struct.nf_conn* @kzalloc(i32 16, i32 %49)
  store %struct.nf_conn* %50, %struct.nf_conn** %8, align 8
  %51 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %52 = icmp ne %struct.nf_conn* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store %struct.nf_conn* null, %struct.nf_conn** %4, align 8
  br label %71

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %47
  %56 = load i32, i32* @IPS_TEMPLATE, align 4
  %57 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %58 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %60 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %59, i32 0, i32 1
  %61 = load %struct.net*, %struct.net** %5, align 8
  %62 = call i32 @write_pnet(i32* %60, %struct.net* %61)
  %63 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %64 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %6, align 8
  %65 = call i32 @nf_ct_zone_add(%struct.nf_conn* %63, %struct.nf_conntrack_zone* %64)
  %66 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %67 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = call i32 @atomic_set(i32* %68, i32 0)
  %70 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  store %struct.nf_conn* %70, %struct.nf_conn** %4, align 8
  br label %71

71:                                               ; preds = %55, %53, %21
  %72 = load %struct.nf_conn*, %struct.nf_conn** %4, align 8
  ret %struct.nf_conn* %72
}

declare dso_local %struct.nf_conn* @kzalloc(i32, i32) #1

declare dso_local i64 @NFCT_ALIGN(i64) #1

declare dso_local i32 @write_pnet(i32*, %struct.net*) #1

declare dso_local i32 @nf_ct_zone_add(%struct.nf_conn*, %struct.nf_conntrack_zone*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

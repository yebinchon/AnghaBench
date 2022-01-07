; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_pptp.c_destroy_sibling_or_exp.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_pptp.c_destroy_sibling_or_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nf_conn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.nf_conntrack_zone = type { i32 }
%struct.nf_conntrack_expect = type { %struct.TYPE_4__ }

@.str = private unnamed_addr constant [39 x i8] c"trying to timeout ct or exp for tuple \00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"setting timeout of conntrack %p to 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"unexpect_related of expect %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nf_conn*, %struct.nf_conntrack_tuple*)* @destroy_sibling_or_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @destroy_sibling_or_exp(%struct.net* %0, %struct.nf_conn* %1, %struct.nf_conntrack_tuple* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca %struct.nf_conntrack_tuple*, align 8
  %8 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %9 = alloca %struct.nf_conntrack_zone*, align 8
  %10 = alloca %struct.nf_conntrack_expect*, align 8
  %11 = alloca %struct.nf_conn*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %6, align 8
  store %struct.nf_conntrack_tuple* %2, %struct.nf_conntrack_tuple** %7, align 8
  %12 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %14 = call i32 @nf_ct_dump_tuple(%struct.nf_conntrack_tuple* %13)
  %15 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %16 = bitcast %struct.nf_conn* %15 to %struct.nf_conntrack_expect*
  %17 = call %struct.nf_conntrack_zone* @nf_ct_zone(%struct.nf_conntrack_expect* %16)
  store %struct.nf_conntrack_zone* %17, %struct.nf_conntrack_zone** %9, align 8
  %18 = load %struct.net*, %struct.net** %5, align 8
  %19 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %9, align 8
  %20 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %21 = call %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net* %18, %struct.nf_conntrack_zone* %19, %struct.nf_conntrack_tuple* %20)
  store %struct.nf_conntrack_tuple_hash* %21, %struct.nf_conntrack_tuple_hash** %8, align 8
  %22 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %8, align 8
  %23 = icmp ne %struct.nf_conntrack_tuple_hash* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %3
  %25 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %8, align 8
  %26 = call %struct.nf_conntrack_expect* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %25)
  %27 = bitcast %struct.nf_conntrack_expect* %26 to %struct.nf_conn*
  store %struct.nf_conn* %27, %struct.nf_conn** %11, align 8
  %28 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %29 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), %struct.nf_conn* %28)
  %30 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %31 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %35 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %39 = bitcast %struct.nf_conn* %38 to %struct.nf_conntrack_expect*
  %40 = call i32 @nf_ct_kill(%struct.nf_conntrack_expect* %39)
  %41 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %42 = bitcast %struct.nf_conn* %41 to %struct.nf_conntrack_expect*
  %43 = call i32 @nf_ct_put(%struct.nf_conntrack_expect* %42)
  store i32 1, i32* %4, align 4
  br label %60

44:                                               ; preds = %3
  %45 = load %struct.net*, %struct.net** %5, align 8
  %46 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %9, align 8
  %47 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %48 = call %struct.nf_conntrack_expect* @nf_ct_expect_find_get(%struct.net* %45, %struct.nf_conntrack_zone* %46, %struct.nf_conntrack_tuple* %47)
  store %struct.nf_conntrack_expect* %48, %struct.nf_conntrack_expect** %10, align 8
  %49 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %10, align 8
  %50 = icmp ne %struct.nf_conntrack_expect* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %10, align 8
  %53 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.nf_conntrack_expect* %52)
  %54 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %10, align 8
  %55 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %54)
  %56 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %10, align 8
  %57 = call i32 @nf_ct_expect_put(%struct.nf_conntrack_expect* %56)
  store i32 1, i32* %4, align 4
  br label %60

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %51, %24
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @nf_ct_dump_tuple(%struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conntrack_zone* @nf_ct_zone(%struct.nf_conntrack_expect*) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net*, %struct.nf_conntrack_zone*, %struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conntrack_expect* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i32 @nf_ct_kill(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conntrack_expect*) #1

declare dso_local %struct.nf_conntrack_expect* @nf_ct_expect_find_get(%struct.net*, %struct.nf_conntrack_zone*, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @nf_ct_expect_put(%struct.nf_conntrack_expect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_hashlimit_mt_check_v1.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_hashlimit_mt_check_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.xt_hashlimit_mtinfo1* }
%struct.xt_hashlimit_mtinfo1 = type { i32, i32, i32 }
%struct.hashlimit_cfg3 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @hashlimit_mt_check_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashlimit_mt_check_v1(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_hashlimit_mtinfo1*, align 8
  %5 = alloca %struct.hashlimit_cfg3, align 4
  %6 = alloca i32, align 4
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %7 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %8 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %7, i32 0, i32 0
  %9 = load %struct.xt_hashlimit_mtinfo1*, %struct.xt_hashlimit_mtinfo1** %8, align 8
  store %struct.xt_hashlimit_mtinfo1* %9, %struct.xt_hashlimit_mtinfo1** %4, align 8
  %10 = bitcast %struct.hashlimit_cfg3* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.xt_hashlimit_mtinfo1*, %struct.xt_hashlimit_mtinfo1** %4, align 8
  %12 = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, %struct.xt_hashlimit_mtinfo1* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @xt_check_proc_name(i32 %13, i32 4)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %36

19:                                               ; preds = %1
  %20 = load %struct.xt_hashlimit_mtinfo1*, %struct.xt_hashlimit_mtinfo1** %4, align 8
  %21 = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, %struct.xt_hashlimit_mtinfo1* %20, i32 0, i32 2
  %22 = bitcast i32* %21 to i8*
  %23 = call i32 @cfg_copy(%struct.hashlimit_cfg3* %5, i8* %22, i32 1)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %36

28:                                               ; preds = %19
  %29 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %30 = load %struct.xt_hashlimit_mtinfo1*, %struct.xt_hashlimit_mtinfo1** %4, align 8
  %31 = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, %struct.xt_hashlimit_mtinfo1* %30, i32 0, i32 1
  %32 = load %struct.xt_hashlimit_mtinfo1*, %struct.xt_hashlimit_mtinfo1** %4, align 8
  %33 = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, %struct.xt_hashlimit_mtinfo1* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @hashlimit_mt_check_common(%struct.xt_mtchk_param* %29, i32* %31, %struct.hashlimit_cfg3* %5, i32 %34, i32 1)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %28, %26, %17
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @xt_check_proc_name(i32, i32) #2

declare dso_local i32 @cfg_copy(%struct.hashlimit_cfg3*, i8*, i32) #2

declare dso_local i32 @hashlimit_mt_check_common(%struct.xt_mtchk_param*, i32*, %struct.hashlimit_cfg3*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

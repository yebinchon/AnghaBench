; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_flow_dissector.c_print_opts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_flow_dissector.c_print_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfg_l3_inner = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"inner.dest6\00", align 1
@in_daddr6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"inner.source6\00", align 1
@in_saddr6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"inner.dest4\00", align 1
@in_daddr4 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"inner.source4\00", align 1
@in_saddr4 = common dso_local global i32 0, align 4
@cfg_l3_outer = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"encap proto:   %u\0A\00", align 1
@cfg_encap_proto = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"outer.dest6\00", align 1
@out_daddr6 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"outer.source6\00", align 1
@out_saddr6 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"outer.dest4\00", align 1
@out_daddr4 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"outer.source4\00", align 1
@out_saddr4 = common dso_local global i32 0, align 4
@cfg_l3_extra = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"extra.dest6\00", align 1
@extra_daddr6 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"extra.source6\00", align 1
@extra_saddr6 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"extra.dest4\00", align 1
@extra_daddr4 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"extra.source4\00", align 1
@extra_saddr4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_opts() #0 {
  %1 = load i64, i64* @cfg_l3_inner, align 8
  %2 = load i64, i64* @PF_INET6, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = call i32 @util_printaddr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* bitcast (i32* @in_daddr6 to i8*))
  %6 = call i32 @util_printaddr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* bitcast (i32* @in_saddr6 to i8*))
  br label %10

7:                                                ; preds = %0
  %8 = call i32 @util_printaddr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* bitcast (i32* @in_daddr4 to i8*))
  %9 = call i32 @util_printaddr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* bitcast (i32* @in_saddr4 to i8*))
  br label %10

10:                                               ; preds = %7, %4
  %11 = load i64, i64* @cfg_l3_outer, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  br label %41

14:                                               ; preds = %10
  %15 = load i32, i32* @stderr, align 4
  %16 = load i32, i32* @cfg_encap_proto, align 4
  %17 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %16)
  %18 = load i64, i64* @cfg_l3_outer, align 8
  %19 = load i64, i64* @PF_INET6, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = call i32 @util_printaddr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* bitcast (i32* @out_daddr6 to i8*))
  %23 = call i32 @util_printaddr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* bitcast (i32* @out_saddr6 to i8*))
  br label %27

24:                                               ; preds = %14
  %25 = call i32 @util_printaddr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* bitcast (i32* @out_daddr4 to i8*))
  %26 = call i32 @util_printaddr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* bitcast (i32* @out_saddr4 to i8*))
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* @cfg_l3_extra, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %41

31:                                               ; preds = %27
  %32 = load i64, i64* @cfg_l3_outer, align 8
  %33 = load i64, i64* @PF_INET6, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = call i32 @util_printaddr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* bitcast (i32* @extra_daddr6 to i8*))
  %37 = call i32 @util_printaddr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* bitcast (i32* @extra_saddr6 to i8*))
  br label %41

38:                                               ; preds = %31
  %39 = call i32 @util_printaddr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* bitcast (i32* @extra_daddr4 to i8*))
  %40 = call i32 @util_printaddr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* bitcast (i32* @extra_saddr4 to i8*))
  br label %41

41:                                               ; preds = %13, %30, %38, %35
  ret void
}

declare dso_local i32 @util_printaddr(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

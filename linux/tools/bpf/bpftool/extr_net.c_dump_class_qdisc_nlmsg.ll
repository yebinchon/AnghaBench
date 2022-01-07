; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_net.c_dump_class_qdisc_nlmsg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_net.c_dump_class_qdisc_nlmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.bpf_tcinfo_t = type { i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.tcmsg = type { i64 }

@TCA_KIND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"clsact\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.nlattr**)* @dump_class_qdisc_nlmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_class_qdisc_nlmsg(i8* %0, i8* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.bpf_tcinfo_t*, align 8
  %9 = alloca %struct.tcmsg*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.bpf_tcinfo_t*
  store %struct.bpf_tcinfo_t* %11, %struct.bpf_tcinfo_t** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.tcmsg*
  store %struct.tcmsg* %13, %struct.tcmsg** %9, align 8
  %14 = load %struct.bpf_tcinfo_t*, %struct.bpf_tcinfo_t** %8, align 8
  %15 = getelementptr inbounds %struct.bpf_tcinfo_t, %struct.bpf_tcinfo_t* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %3
  %19 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %20 = load i64, i64* @TCA_KIND, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = icmp ne %struct.nlattr* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %26 = load i64, i64* @TCA_KIND, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = call i32 @libbpf_nla_data(%struct.nlattr* %28)
  %30 = call i64 @strcmp(i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %116

33:                                               ; preds = %24, %18
  %34 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %35 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %116

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %3
  %41 = load %struct.bpf_tcinfo_t*, %struct.bpf_tcinfo_t** %8, align 8
  %42 = getelementptr inbounds %struct.bpf_tcinfo_t, %struct.bpf_tcinfo_t* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.bpf_tcinfo_t*, %struct.bpf_tcinfo_t** %8, align 8
  %45 = getelementptr inbounds %struct.bpf_tcinfo_t, %struct.bpf_tcinfo_t* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %40
  %49 = load %struct.bpf_tcinfo_t*, %struct.bpf_tcinfo_t** %8, align 8
  %50 = getelementptr inbounds %struct.bpf_tcinfo_t, %struct.bpf_tcinfo_t* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load %struct.bpf_tcinfo_t*, %struct.bpf_tcinfo_t** %8, align 8
  %53 = getelementptr inbounds %struct.bpf_tcinfo_t, %struct.bpf_tcinfo_t* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 16
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = call %struct.TYPE_3__* @realloc(%struct.TYPE_3__* %51, i32 %58)
  %60 = load %struct.bpf_tcinfo_t*, %struct.bpf_tcinfo_t** %8, align 8
  %61 = getelementptr inbounds %struct.bpf_tcinfo_t, %struct.bpf_tcinfo_t* %60, i32 0, i32 2
  store %struct.TYPE_3__* %59, %struct.TYPE_3__** %61, align 8
  %62 = load %struct.bpf_tcinfo_t*, %struct.bpf_tcinfo_t** %8, align 8
  %63 = getelementptr inbounds %struct.bpf_tcinfo_t, %struct.bpf_tcinfo_t* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = icmp ne %struct.TYPE_3__* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %48
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %116

69:                                               ; preds = %48
  %70 = load %struct.bpf_tcinfo_t*, %struct.bpf_tcinfo_t** %8, align 8
  %71 = getelementptr inbounds %struct.bpf_tcinfo_t, %struct.bpf_tcinfo_t* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 16
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %69, %40
  %75 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %76 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.bpf_tcinfo_t*, %struct.bpf_tcinfo_t** %8, align 8
  %79 = getelementptr inbounds %struct.bpf_tcinfo_t, %struct.bpf_tcinfo_t* %78, i32 0, i32 2
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load %struct.bpf_tcinfo_t*, %struct.bpf_tcinfo_t** %8, align 8
  %82 = getelementptr inbounds %struct.bpf_tcinfo_t, %struct.bpf_tcinfo_t* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i64 %77, i64* %86, align 8
  %87 = load %struct.bpf_tcinfo_t*, %struct.bpf_tcinfo_t** %8, align 8
  %88 = getelementptr inbounds %struct.bpf_tcinfo_t, %struct.bpf_tcinfo_t* %87, i32 0, i32 2
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load %struct.bpf_tcinfo_t*, %struct.bpf_tcinfo_t** %8, align 8
  %91 = getelementptr inbounds %struct.bpf_tcinfo_t, %struct.bpf_tcinfo_t* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %98 = load i64, i64* @TCA_KIND, align 8
  %99 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %97, i64 %98
  %100 = load %struct.nlattr*, %struct.nlattr** %99, align 8
  %101 = icmp ne %struct.nlattr* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %74
  %103 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %104 = load i64, i64* @TCA_KIND, align 8
  %105 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %103, i64 %104
  %106 = load %struct.nlattr*, %struct.nlattr** %105, align 8
  %107 = call i8* @libbpf_nla_getattr_str(%struct.nlattr* %106)
  br label %109

108:                                              ; preds = %74
  br label %109

109:                                              ; preds = %108, %102
  %110 = phi i8* [ %107, %102 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %108 ]
  %111 = call i32 @snprintf(i32 %96, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %110)
  %112 = load %struct.bpf_tcinfo_t*, %struct.bpf_tcinfo_t** %8, align 8
  %113 = getelementptr inbounds %struct.bpf_tcinfo_t, %struct.bpf_tcinfo_t* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %109, %66, %38, %32
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @libbpf_nla_data(%struct.nlattr*) #1

declare dso_local %struct.TYPE_3__* @realloc(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @libbpf_nla_getattr_str(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

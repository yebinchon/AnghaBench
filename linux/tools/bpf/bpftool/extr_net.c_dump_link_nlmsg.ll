; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_net.c_dump_link_nlmsg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_net.c_dump_link_nlmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.bpf_netdev_t = type { i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.ifinfomsg = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@IFLA_IFNAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.nlattr**)* @dump_link_nlmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_link_nlmsg(i8* %0, i8* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.bpf_netdev_t*, align 8
  %9 = alloca %struct.ifinfomsg*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.bpf_netdev_t*
  store %struct.bpf_netdev_t* %11, %struct.bpf_netdev_t** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.ifinfomsg*
  store %struct.ifinfomsg* %13, %struct.ifinfomsg** %9, align 8
  %14 = load %struct.bpf_netdev_t*, %struct.bpf_netdev_t** %8, align 8
  %15 = getelementptr inbounds %struct.bpf_netdev_t, %struct.bpf_netdev_t* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.bpf_netdev_t*, %struct.bpf_netdev_t** %8, align 8
  %20 = getelementptr inbounds %struct.bpf_netdev_t, %struct.bpf_netdev_t* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ifinfomsg*, %struct.ifinfomsg** %9, align 8
  %23 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %106

27:                                               ; preds = %18, %3
  %28 = load %struct.bpf_netdev_t*, %struct.bpf_netdev_t** %8, align 8
  %29 = getelementptr inbounds %struct.bpf_netdev_t, %struct.bpf_netdev_t* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.bpf_netdev_t*, %struct.bpf_netdev_t** %8, align 8
  %32 = getelementptr inbounds %struct.bpf_netdev_t, %struct.bpf_netdev_t* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %27
  %36 = load %struct.bpf_netdev_t*, %struct.bpf_netdev_t** %8, align 8
  %37 = getelementptr inbounds %struct.bpf_netdev_t, %struct.bpf_netdev_t* %36, i32 0, i32 3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load %struct.bpf_netdev_t*, %struct.bpf_netdev_t** %8, align 8
  %40 = getelementptr inbounds %struct.bpf_netdev_t, %struct.bpf_netdev_t* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 16
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call %struct.TYPE_3__* @realloc(%struct.TYPE_3__* %38, i32 %45)
  %47 = load %struct.bpf_netdev_t*, %struct.bpf_netdev_t** %8, align 8
  %48 = getelementptr inbounds %struct.bpf_netdev_t, %struct.bpf_netdev_t* %47, i32 0, i32 3
  store %struct.TYPE_3__* %46, %struct.TYPE_3__** %48, align 8
  %49 = load %struct.bpf_netdev_t*, %struct.bpf_netdev_t** %8, align 8
  %50 = getelementptr inbounds %struct.bpf_netdev_t, %struct.bpf_netdev_t* %49, i32 0, i32 3
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = icmp ne %struct.TYPE_3__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %35
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %106

56:                                               ; preds = %35
  %57 = load %struct.bpf_netdev_t*, %struct.bpf_netdev_t** %8, align 8
  %58 = getelementptr inbounds %struct.bpf_netdev_t, %struct.bpf_netdev_t* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 16
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %56, %27
  %62 = load %struct.ifinfomsg*, %struct.ifinfomsg** %9, align 8
  %63 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.bpf_netdev_t*, %struct.bpf_netdev_t** %8, align 8
  %66 = getelementptr inbounds %struct.bpf_netdev_t, %struct.bpf_netdev_t* %65, i32 0, i32 3
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load %struct.bpf_netdev_t*, %struct.bpf_netdev_t** %8, align 8
  %69 = getelementptr inbounds %struct.bpf_netdev_t, %struct.bpf_netdev_t* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i64 %64, i64* %73, align 8
  %74 = load %struct.bpf_netdev_t*, %struct.bpf_netdev_t** %8, align 8
  %75 = getelementptr inbounds %struct.bpf_netdev_t, %struct.bpf_netdev_t* %74, i32 0, i32 3
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load %struct.bpf_netdev_t*, %struct.bpf_netdev_t** %8, align 8
  %78 = getelementptr inbounds %struct.bpf_netdev_t, %struct.bpf_netdev_t* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %85 = load i64, i64* @IFLA_IFNAME, align 8
  %86 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %84, i64 %85
  %87 = load %struct.nlattr*, %struct.nlattr** %86, align 8
  %88 = icmp ne %struct.nlattr* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %61
  %90 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %91 = load i64, i64* @IFLA_IFNAME, align 8
  %92 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %90, i64 %91
  %93 = load %struct.nlattr*, %struct.nlattr** %92, align 8
  %94 = call i8* @libbpf_nla_getattr_str(%struct.nlattr* %93)
  br label %96

95:                                               ; preds = %61
  br label %96

96:                                               ; preds = %95, %89
  %97 = phi i8* [ %94, %89 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %95 ]
  %98 = call i32 @snprintf(i32 %83, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %97)
  %99 = load %struct.bpf_netdev_t*, %struct.bpf_netdev_t** %8, align 8
  %100 = getelementptr inbounds %struct.bpf_netdev_t, %struct.bpf_netdev_t* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  %103 = load %struct.ifinfomsg*, %struct.ifinfomsg** %9, align 8
  %104 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %105 = call i32 @do_xdp_dump(%struct.ifinfomsg* %103, %struct.nlattr** %104)
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %96, %53, %26
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.TYPE_3__* @realloc(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @libbpf_nla_getattr_str(%struct.nlattr*) #1

declare dso_local i32 @do_xdp_dump(%struct.ifinfomsg*, %struct.nlattr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

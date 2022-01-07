; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_netlink.c_get_xdp_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_netlink.c_get_xdp_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.xdp_id_md = type { i64, i32, i32 }
%struct.ifinfomsg = type { i64 }

@IFLA_XDP_MAX = common dso_local global i32 0, align 4
@IFLA_XDP = common dso_local global i64 0, align 8
@IFLA_XDP_ATTACHED = common dso_local global i64 0, align 8
@XDP_ATTACHED_NONE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.nlattr**)* @get_xdp_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_xdp_id(i8* %0, i8* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.xdp_id_md*, align 8
  %11 = alloca %struct.ifinfomsg*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %16 = load i32, i32* @IFLA_XDP_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca %struct.nlattr*, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.xdp_id_md*
  store %struct.xdp_id_md* %22, %struct.xdp_id_md** %10, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to %struct.ifinfomsg*
  store %struct.ifinfomsg* %24, %struct.ifinfomsg** %11, align 8
  %25 = load %struct.xdp_id_md*, %struct.xdp_id_md** %10, align 8
  %26 = getelementptr inbounds %struct.xdp_id_md, %struct.xdp_id_md* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %3
  %30 = load %struct.xdp_id_md*, %struct.xdp_id_md** %10, align 8
  %31 = getelementptr inbounds %struct.xdp_id_md, %struct.xdp_id_md* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ifinfomsg*, %struct.ifinfomsg** %11, align 8
  %34 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %96

38:                                               ; preds = %29, %3
  %39 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %40 = load i64, i64* @IFLA_XDP, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = icmp ne %struct.nlattr* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %96

45:                                               ; preds = %38
  %46 = load i32, i32* @IFLA_XDP_MAX, align 4
  %47 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %48 = load i64, i64* @IFLA_XDP, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %47, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = call i32 @libbpf_nla_parse_nested(%struct.nlattr** %20, i32 %46, %struct.nlattr* %50, i32* null)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %96

56:                                               ; preds = %45
  %57 = load i64, i64* @IFLA_XDP_ATTACHED, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = icmp ne %struct.nlattr* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %96

62:                                               ; preds = %56
  %63 = load i64, i64* @IFLA_XDP_ATTACHED, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = call zeroext i8 @libbpf_nla_getattr_u8(%struct.nlattr* %65)
  store i8 %66, i8* %12, align 1
  %67 = load i8, i8* %12, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* @XDP_ATTACHED_NONE, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %96

73:                                               ; preds = %62
  %74 = load i8, i8* %12, align 1
  %75 = load %struct.xdp_id_md*, %struct.xdp_id_md** %10, align 8
  %76 = getelementptr inbounds %struct.xdp_id_md, %struct.xdp_id_md* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call zeroext i8 @get_xdp_id_attr(i8 zeroext %74, i32 %77)
  store i8 %78, i8* %13, align 1
  %79 = load i8, i8* %13, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load i8, i8* %13, align 1
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %83
  %85 = load %struct.nlattr*, %struct.nlattr** %84, align 8
  %86 = icmp ne %struct.nlattr* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %81, %73
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %96

88:                                               ; preds = %81
  %89 = load i8, i8* %13, align 1
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %90
  %92 = load %struct.nlattr*, %struct.nlattr** %91, align 8
  %93 = call i32 @libbpf_nla_getattr_u32(%struct.nlattr* %92)
  %94 = load %struct.xdp_id_md*, %struct.xdp_id_md** %10, align 8
  %95 = getelementptr inbounds %struct.xdp_id_md, %struct.xdp_id_md* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %96

96:                                               ; preds = %88, %87, %72, %61, %54, %44, %37
  %97 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @libbpf_nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32*) #2

declare dso_local zeroext i8 @libbpf_nla_getattr_u8(%struct.nlattr*) #2

declare dso_local zeroext i8 @get_xdp_id_attr(i8 zeroext, i32) #2

declare dso_local i32 @libbpf_nla_getattr_u32(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

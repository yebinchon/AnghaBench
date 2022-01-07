; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_bitmap_port.c_bitmap_port_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_bitmap_port.c_bitmap_port_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ip_set = type { i32, i32, i32* }
%struct.nlattr = type { i32 }
%struct.bitmap_port = type { i32, i32 }

@IPSET_ATTR_PORT = common dso_local global i64 0, align 8
@IPSET_ATTR_PORT_TO = common dso_local global i64 0, align 8
@IPSET_ATTR_TIMEOUT = common dso_local global i64 0, align 8
@IPSET_ATTR_CADT_FLAGS = common dso_local global i64 0, align 8
@IPSET_ERR_PROTOCOL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bitmap_port = common dso_local global i32 0, align 4
@bitmap_port_gc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.ip_set*, %struct.nlattr**, i32)* @bitmap_port_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_port_create(%struct.net* %0, %struct.ip_set* %1, %struct.nlattr** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.ip_set*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bitmap_port*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.ip_set* %1, %struct.ip_set** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %15 = load i64, i64* @IPSET_ATTR_PORT, align 8
  %16 = call i32 @ip_set_attr_netorder(%struct.nlattr** %14, i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %4
  %19 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %20 = load i64, i64* @IPSET_ATTR_PORT_TO, align 8
  %21 = call i32 @ip_set_attr_netorder(%struct.nlattr** %19, i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %25 = load i64, i64* @IPSET_ATTR_TIMEOUT, align 8
  %26 = call i32 @ip_set_optattr_netorder(%struct.nlattr** %24, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %30 = load i64, i64* @IPSET_ATTR_CADT_FLAGS, align 8
  %31 = call i32 @ip_set_optattr_netorder(%struct.nlattr** %29, i64 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %28, %23, %18, %4
  %35 = phi i1 [ true, %23 ], [ true, %18 ], [ true, %4 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @IPSET_ERR_PROTOCOL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %126

42:                                               ; preds = %34
  %43 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %44 = load i64, i64* @IPSET_ATTR_PORT, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = call i64 @ip_set_get_h16(%struct.nlattr* %46)
  store i64 %47, i64* %11, align 8
  %48 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %49 = load i64, i64* @IPSET_ATTR_PORT_TO, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %48, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = call i64 @ip_set_get_h16(%struct.nlattr* %51)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %42
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @swap(i64 %57, i64 %58)
  br label %60

60:                                               ; preds = %56, %42
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %11, align 8
  %63 = sub nsw i64 %61, %62
  %64 = add nsw i64 %63, 1
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %13, align 4
  %66 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %67 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %68 = call i32 @ip_set_elem_len(%struct.ip_set* %66, %struct.nlattr** %67, i32 0, i32 0)
  %69 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %70 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %73 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %71, %74
  %76 = sext i32 %75 to i64
  %77 = add i64 8, %76
  %78 = trunc i64 %77 to i32
  %79 = call %struct.bitmap_port* @ip_set_alloc(i32 %78)
  store %struct.bitmap_port* %79, %struct.bitmap_port** %10, align 8
  %80 = load %struct.bitmap_port*, %struct.bitmap_port** %10, align 8
  %81 = icmp ne %struct.bitmap_port* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %60
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %126

85:                                               ; preds = %60
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.bitmap_port*, %struct.bitmap_port** %10, align 8
  %88 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.bitmap_port*, %struct.bitmap_port** %10, align 8
  %90 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @bitmap_bytes(i32 0, i32 %91)
  %93 = load %struct.bitmap_port*, %struct.bitmap_port** %10, align 8
  %94 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %96 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %95, i32 0, i32 2
  store i32* @bitmap_port, i32** %96, align 8
  %97 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %98 = load %struct.bitmap_port*, %struct.bitmap_port** %10, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* %12, align 8
  %101 = call i32 @init_map_port(%struct.ip_set* %97, %struct.bitmap_port* %98, i64 %99, i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %85
  %104 = load %struct.bitmap_port*, %struct.bitmap_port** %10, align 8
  %105 = call i32 @kfree(%struct.bitmap_port* %104)
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %126

108:                                              ; preds = %85
  %109 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %110 = load i64, i64* @IPSET_ATTR_TIMEOUT, align 8
  %111 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %109, i64 %110
  %112 = load %struct.nlattr*, %struct.nlattr** %111, align 8
  %113 = icmp ne %struct.nlattr* %112, null
  br i1 %113, label %114, label %125

114:                                              ; preds = %108
  %115 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %116 = load i64, i64* @IPSET_ATTR_TIMEOUT, align 8
  %117 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %115, i64 %116
  %118 = load %struct.nlattr*, %struct.nlattr** %117, align 8
  %119 = call i32 @ip_set_timeout_uget(%struct.nlattr* %118)
  %120 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %121 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %123 = load i32, i32* @bitmap_port_gc, align 4
  %124 = call i32 @bitmap_port_gc_init(%struct.ip_set* %122, i32 %123)
  br label %125

125:                                              ; preds = %114, %108
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %125, %103, %82, %39
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ip_set_attr_netorder(%struct.nlattr**, i64) #1

declare dso_local i32 @ip_set_optattr_netorder(%struct.nlattr**, i64) #1

declare dso_local i64 @ip_set_get_h16(%struct.nlattr*) #1

declare dso_local i32 @swap(i64, i64) #1

declare dso_local i32 @ip_set_elem_len(%struct.ip_set*, %struct.nlattr**, i32, i32) #1

declare dso_local %struct.bitmap_port* @ip_set_alloc(i32) #1

declare dso_local i32 @bitmap_bytes(i32, i32) #1

declare dso_local i32 @init_map_port(%struct.ip_set*, %struct.bitmap_port*, i64, i64) #1

declare dso_local i32 @kfree(%struct.bitmap_port*) #1

declare dso_local i32 @ip_set_timeout_uget(%struct.nlattr*) #1

declare dso_local i32 @bitmap_port_gc_init(%struct.ip_set*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

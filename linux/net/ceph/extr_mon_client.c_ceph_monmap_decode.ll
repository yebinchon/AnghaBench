; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_ceph_monmap_decode.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_ceph_monmap_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_monmap = type { i32, i32, %struct.ceph_entity_inst*, %struct.ceph_fsid }
%struct.ceph_entity_inst = type { i32, i32 }
%struct.ceph_fsid = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@bad = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"monmap_decode %p %p len %d (%d)\0A\00", align 1
@CEPH_MAX_MON = common dso_local global i32 0, align 4
@mon_inst = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"monmap_decode epoch %d, num_mon %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"monmap_decode  mon%d is %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"monmap_decode failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_monmap* (i8*, i8*)* @ceph_monmap_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_monmap* @ceph_monmap_decode(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.ceph_monmap*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ceph_monmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ceph_fsid, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ceph_entity_inst*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ceph_monmap* null, %struct.ceph_monmap** %6, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @bad, align 4
  %19 = call i32 @ceph_decode_32_safe(i8** %4, i8* %16, i32 %17, i32 %18)
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @bad, align 4
  %23 = call i32 @ceph_decode_need(i8** %4, i8* %20, i32 %21, i32 %22)
  %24 = load i8*, i8** %4, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %26, i32 %27, i32 %33)
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr i8, i8* %35, i64 4
  store i8* %36, i8** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* @bad, align 4
  %39 = call i32 @ceph_decode_need(i8** %4, i8* %37, i32 12, i32 %38)
  %40 = call i32 @ceph_decode_copy(i8** %4, %struct.ceph_fsid* %9, i32 4)
  %41 = call i32 @ceph_decode_32(i8** %4)
  store i32 %41, i32* %10, align 4
  %42 = call i32 @ceph_decode_32(i8** %4)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @CEPH_MAX_MON, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %2
  br label %128

47:                                               ; preds = %2
  %48 = load %struct.ceph_monmap*, %struct.ceph_monmap** %6, align 8
  %49 = load i32, i32* @mon_inst, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @struct_size(%struct.ceph_monmap* %48, i32 %49, i32 %50)
  %52 = load i32, i32* @GFP_NOFS, align 4
  %53 = call %struct.ceph_monmap* @kmalloc(i32 %51, i32 %52)
  store %struct.ceph_monmap* %53, %struct.ceph_monmap** %6, align 8
  %54 = load %struct.ceph_monmap*, %struct.ceph_monmap** %6, align 8
  %55 = icmp eq %struct.ceph_monmap* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.ceph_monmap* @ERR_PTR(i32 %58)
  store %struct.ceph_monmap* %59, %struct.ceph_monmap** %3, align 8
  br label %135

60:                                               ; preds = %47
  %61 = load %struct.ceph_monmap*, %struct.ceph_monmap** %6, align 8
  %62 = getelementptr inbounds %struct.ceph_monmap, %struct.ceph_monmap* %61, i32 0, i32 3
  %63 = bitcast %struct.ceph_fsid* %62 to i8*
  %64 = bitcast %struct.ceph_fsid* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 4 %64, i64 4, i1 false)
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.ceph_monmap*, %struct.ceph_monmap** %6, align 8
  %67 = getelementptr inbounds %struct.ceph_monmap, %struct.ceph_monmap* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.ceph_monmap*, %struct.ceph_monmap** %6, align 8
  %70 = getelementptr inbounds %struct.ceph_monmap, %struct.ceph_monmap* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %95, %60
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %71
  %76 = load %struct.ceph_monmap*, %struct.ceph_monmap** %6, align 8
  %77 = getelementptr inbounds %struct.ceph_monmap, %struct.ceph_monmap* %76, i32 0, i32 2
  %78 = load %struct.ceph_entity_inst*, %struct.ceph_entity_inst** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ceph_entity_inst, %struct.ceph_entity_inst* %78, i64 %80
  store %struct.ceph_entity_inst* %81, %struct.ceph_entity_inst** %13, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = load %struct.ceph_entity_inst*, %struct.ceph_entity_inst** %13, align 8
  %84 = getelementptr inbounds %struct.ceph_entity_inst, %struct.ceph_entity_inst* %83, i32 0, i32 1
  %85 = load i32, i32* @bad, align 4
  %86 = call i32 @ceph_decode_copy_safe(i8** %4, i8* %82, i32* %84, i32 4, i32 %85)
  %87 = load i8*, i8** %5, align 8
  %88 = load %struct.ceph_entity_inst*, %struct.ceph_entity_inst** %13, align 8
  %89 = getelementptr inbounds %struct.ceph_entity_inst, %struct.ceph_entity_inst* %88, i32 0, i32 0
  %90 = call i32 @ceph_decode_entity_addr(i8** %4, i8* %87, i32* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %75
  br label %128

94:                                               ; preds = %75
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %71

98:                                               ; preds = %71
  %99 = load %struct.ceph_monmap*, %struct.ceph_monmap** %6, align 8
  %100 = getelementptr inbounds %struct.ceph_monmap, %struct.ceph_monmap* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ceph_monmap*, %struct.ceph_monmap** %6, align 8
  %103 = getelementptr inbounds %struct.ceph_monmap, %struct.ceph_monmap* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %104)
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %123, %98
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.ceph_monmap*, %struct.ceph_monmap** %6, align 8
  %109 = getelementptr inbounds %struct.ceph_monmap, %struct.ceph_monmap* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %106
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.ceph_monmap*, %struct.ceph_monmap** %6, align 8
  %115 = getelementptr inbounds %struct.ceph_monmap, %struct.ceph_monmap* %114, i32 0, i32 2
  %116 = load %struct.ceph_entity_inst*, %struct.ceph_entity_inst** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.ceph_entity_inst, %struct.ceph_entity_inst* %116, i64 %118
  %120 = getelementptr inbounds %struct.ceph_entity_inst, %struct.ceph_entity_inst* %119, i32 0, i32 0
  %121 = call i32 @ceph_pr_addr(i32* %120)
  %122 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %121)
  br label %123

123:                                              ; preds = %112
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %106

126:                                              ; preds = %106
  %127 = load %struct.ceph_monmap*, %struct.ceph_monmap** %6, align 8
  store %struct.ceph_monmap* %127, %struct.ceph_monmap** %3, align 8
  br label %135

128:                                              ; preds = %93, %46
  %129 = load i32, i32* %8, align 4
  %130 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  %131 = load %struct.ceph_monmap*, %struct.ceph_monmap** %6, align 8
  %132 = call i32 @kfree(%struct.ceph_monmap* %131)
  %133 = load i32, i32* %8, align 4
  %134 = call %struct.ceph_monmap* @ERR_PTR(i32 %133)
  store %struct.ceph_monmap* %134, %struct.ceph_monmap** %3, align 8
  br label %135

135:                                              ; preds = %128, %126, %56
  %136 = load %struct.ceph_monmap*, %struct.ceph_monmap** %3, align 8
  ret %struct.ceph_monmap* %136
}

declare dso_local i32 @ceph_decode_32_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i32 @dout(i8*, i32, ...) #1

declare dso_local i32 @ceph_decode_copy(i8**, %struct.ceph_fsid*, i32) #1

declare dso_local i32 @ceph_decode_32(i8**) #1

declare dso_local %struct.ceph_monmap* @kmalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.ceph_monmap*, i32, i32) #1

declare dso_local %struct.ceph_monmap* @ERR_PTR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ceph_decode_copy_safe(i8**, i8*, i32*, i32, i32) #1

declare dso_local i32 @ceph_decode_entity_addr(i8**, i8*, i32*) #1

declare dso_local i32 @ceph_pr_addr(i32*) #1

declare dso_local i32 @kfree(%struct.ceph_monmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

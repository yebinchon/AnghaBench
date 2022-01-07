; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_decode_pg_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_decode_pg_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root = type { i32 }
%struct.ceph_pg_mapping = type { %struct.ceph_pg }
%struct.ceph_pg = type { i32 }

@e_inval = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.rb_root*, %struct.ceph_pg_mapping* (i8**, i8*, i32)*, i32)* @decode_pg_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_pg_mapping(i8** %0, i8* %1, %struct.rb_root* %2, %struct.ceph_pg_mapping* (i8**, i8*, i32)* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rb_root*, align 8
  %10 = alloca %struct.ceph_pg_mapping* (i8**, i8*, i32)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ceph_pg_mapping*, align 8
  %14 = alloca %struct.ceph_pg, align 4
  %15 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.rb_root* %2, %struct.rb_root** %9, align 8
  store %struct.ceph_pg_mapping* (i8**, i8*, i32)* %3, %struct.ceph_pg_mapping* (i8**, i8*, i32)** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load %struct.ceph_pg_mapping* (i8**, i8*, i32)*, %struct.ceph_pg_mapping* (i8**, i8*, i32)** %10, align 8
  %20 = icmp ne %struct.ceph_pg_mapping* (i8**, i8*, i32)* %19, null
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %18, %5
  %23 = phi i1 [ false, %5 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load i8**, i8*** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @e_inval, align 4
  %30 = call i32 @ceph_decode_32_safe(i8** %26, i8* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %86, %22
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %12, align 4
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %35, label %87

35:                                               ; preds = %31
  %36 = load i8**, i8*** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @ceph_decode_pgid(i8** %36, i8* %37, %struct.ceph_pg* %14)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %6, align 4
  br label %91

43:                                               ; preds = %35
  %44 = load %struct.rb_root*, %struct.rb_root** %9, align 8
  %45 = call %struct.ceph_pg_mapping* @lookup_pg_mapping(%struct.rb_root* %44, %struct.ceph_pg* %14)
  store %struct.ceph_pg_mapping* %45, %struct.ceph_pg_mapping** %13, align 8
  %46 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %13, align 8
  %47 = icmp ne %struct.ceph_pg_mapping* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @WARN_ON(i32 %52)
  %54 = load %struct.rb_root*, %struct.rb_root** %9, align 8
  %55 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %13, align 8
  %56 = call i32 @erase_pg_mapping(%struct.rb_root* %54, %struct.ceph_pg_mapping* %55)
  %57 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %13, align 8
  %58 = call i32 @free_pg_mapping(%struct.ceph_pg_mapping* %57)
  br label %59

59:                                               ; preds = %48, %43
  %60 = load %struct.ceph_pg_mapping* (i8**, i8*, i32)*, %struct.ceph_pg_mapping* (i8**, i8*, i32)** %10, align 8
  %61 = icmp ne %struct.ceph_pg_mapping* (i8**, i8*, i32)* %60, null
  br i1 %61, label %62, label %86

62:                                               ; preds = %59
  %63 = load %struct.ceph_pg_mapping* (i8**, i8*, i32)*, %struct.ceph_pg_mapping* (i8**, i8*, i32)** %10, align 8
  %64 = load i8**, i8*** %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call %struct.ceph_pg_mapping* %63(i8** %64, i8* %65, i32 %66)
  store %struct.ceph_pg_mapping* %67, %struct.ceph_pg_mapping** %13, align 8
  %68 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %13, align 8
  %69 = call i64 @IS_ERR(%struct.ceph_pg_mapping* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %13, align 8
  %73 = call i32 @PTR_ERR(%struct.ceph_pg_mapping* %72)
  store i32 %73, i32* %6, align 4
  br label %91

74:                                               ; preds = %62
  %75 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %13, align 8
  %76 = icmp ne %struct.ceph_pg_mapping* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %13, align 8
  %79 = getelementptr inbounds %struct.ceph_pg_mapping, %struct.ceph_pg_mapping* %78, i32 0, i32 0
  %80 = bitcast %struct.ceph_pg* %79 to i8*
  %81 = bitcast %struct.ceph_pg* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 4, i1 false)
  %82 = load %struct.rb_root*, %struct.rb_root** %9, align 8
  %83 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %13, align 8
  %84 = call i32 @insert_pg_mapping(%struct.rb_root* %82, %struct.ceph_pg_mapping* %83)
  br label %85

85:                                               ; preds = %77, %74
  br label %86

86:                                               ; preds = %85, %59
  br label %31

87:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %91

88:                                               ; No predecessors!
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %88, %87, %71, %41
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ceph_decode_32_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_pgid(i8**, i8*, %struct.ceph_pg*) #1

declare dso_local %struct.ceph_pg_mapping* @lookup_pg_mapping(%struct.rb_root*, %struct.ceph_pg*) #1

declare dso_local i32 @erase_pg_mapping(%struct.rb_root*, %struct.ceph_pg_mapping*) #1

declare dso_local i32 @free_pg_mapping(%struct.ceph_pg_mapping*) #1

declare dso_local i64 @IS_ERR(%struct.ceph_pg_mapping*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_pg_mapping*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @insert_pg_mapping(%struct.rb_root*, %struct.ceph_pg_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

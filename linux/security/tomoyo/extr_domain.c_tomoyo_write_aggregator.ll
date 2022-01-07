; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_domain.c_tomoyo_write_aggregator.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_domain.c_tomoyo_write_aggregator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_acl_param = type { %struct.TYPE_3__*, i32*, i64 }
%struct.TYPE_3__ = type { i32* }
%struct.tomoyo_aggregator = type { %struct.TYPE_4__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TOMOYO_ID_AGGREGATOR = common dso_local global i64 0, align 8
@tomoyo_same_aggregator = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_write_aggregator(%struct.tomoyo_acl_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tomoyo_acl_param*, align 8
  %4 = alloca %struct.tomoyo_aggregator, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.tomoyo_acl_param* %0, %struct.tomoyo_acl_param** %3, align 8
  %8 = bitcast %struct.tomoyo_aggregator* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %10 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i32 [ %15, %13 ], [ %18, %16 ]
  store i32 %20, i32* %5, align 4
  %21 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %22 = call i8* @tomoyo_read_token(%struct.tomoyo_acl_param* %21)
  store i8* %22, i8** %6, align 8
  %23 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %24 = call i8* @tomoyo_read_token(%struct.tomoyo_acl_param* %23)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @tomoyo_correct_word(i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @tomoyo_correct_path(i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28, %19
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %80

35:                                               ; preds = %28
  %36 = load i8*, i8** %6, align 8
  %37 = call i8* @tomoyo_get_name(i8* %36)
  %38 = bitcast i8* %37 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.tomoyo_aggregator, %struct.tomoyo_aggregator* %4, i32 0, i32 1
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %39, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i8* @tomoyo_get_name(i8* %40)
  %42 = bitcast i8* %41 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.tomoyo_aggregator, %struct.tomoyo_aggregator* %4, i32 0, i32 0
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %43, align 8
  %44 = getelementptr inbounds %struct.tomoyo_aggregator, %struct.tomoyo_aggregator* %4, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = icmp ne %struct.TYPE_4__* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.tomoyo_aggregator, %struct.tomoyo_aggregator* %4, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = icmp ne %struct.TYPE_4__* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.tomoyo_aggregator, %struct.tomoyo_aggregator* %4, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %47, %35
  br label %72

58:                                               ; preds = %51
  %59 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %60 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @TOMOYO_ID_AGGREGATOR, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %67 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %66, i32 0, i32 1
  store i32* %65, i32** %67, align 8
  %68 = getelementptr inbounds %struct.tomoyo_aggregator, %struct.tomoyo_aggregator* %4, i32 0, i32 2
  %69 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %70 = load i32, i32* @tomoyo_same_aggregator, align 4
  %71 = call i32 @tomoyo_update_policy(i32* %68, i32 24, %struct.tomoyo_acl_param* %69, i32 %70)
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %58, %57
  %73 = getelementptr inbounds %struct.tomoyo_aggregator, %struct.tomoyo_aggregator* %4, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = call i32 @tomoyo_put_name(%struct.TYPE_4__* %74)
  %76 = getelementptr inbounds %struct.tomoyo_aggregator, %struct.tomoyo_aggregator* %4, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = call i32 @tomoyo_put_name(%struct.TYPE_4__* %77)
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %72, %32
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @tomoyo_read_token(%struct.tomoyo_acl_param*) #2

declare dso_local i32 @tomoyo_correct_word(i8*) #2

declare dso_local i32 @tomoyo_correct_path(i8*) #2

declare dso_local i8* @tomoyo_get_name(i8*) #2

declare dso_local i32 @tomoyo_update_policy(i32*, i32, %struct.tomoyo_acl_param*, i32) #2

declare dso_local i32 @tomoyo_put_name(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

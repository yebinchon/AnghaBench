; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock.c_proto_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock.c_proto_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto = type { i32, i32*, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@SLAB_ACCOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s: Can't create sock SLAB cache!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"tw_sock_%s\00", align 1
@proto_list_mutex = common dso_local global i32 0, align 4
@proto_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proto_register(%struct.proto* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.proto* %0, %struct.proto** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @ENOBUFS, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %100

11:                                               ; preds = %2
  %12 = load %struct.proto*, %struct.proto** %4, align 8
  %13 = getelementptr inbounds %struct.proto, %struct.proto* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.proto*, %struct.proto** %4, align 8
  %16 = getelementptr inbounds %struct.proto, %struct.proto* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %19 = load i32, i32* @SLAB_ACCOUNT, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.proto*, %struct.proto** %4, align 8
  %22 = getelementptr inbounds %struct.proto, %struct.proto* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %20, %23
  %25 = load %struct.proto*, %struct.proto** %4, align 8
  %26 = getelementptr inbounds %struct.proto, %struct.proto* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.proto*, %struct.proto** %4, align 8
  %29 = getelementptr inbounds %struct.proto, %struct.proto* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = call i32* @kmem_cache_create_usercopy(i32 %14, i32 %17, i32 0, i32 %24, i32 %27, i32 %30, i32* null)
  %32 = load %struct.proto*, %struct.proto** %4, align 8
  %33 = getelementptr inbounds %struct.proto, %struct.proto* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  %34 = load %struct.proto*, %struct.proto** %4, align 8
  %35 = getelementptr inbounds %struct.proto, %struct.proto* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %11
  %39 = load %struct.proto*, %struct.proto** %4, align 8
  %40 = getelementptr inbounds %struct.proto, %struct.proto* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %145

43:                                               ; preds = %11
  %44 = load %struct.proto*, %struct.proto** %4, align 8
  %45 = call i64 @req_prot_init(%struct.proto* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %130

48:                                               ; preds = %43
  %49 = load %struct.proto*, %struct.proto** %4, align 8
  %50 = getelementptr inbounds %struct.proto, %struct.proto* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = icmp ne %struct.TYPE_2__* %51, null
  br i1 %52, label %53, label %99

53:                                               ; preds = %48
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = load %struct.proto*, %struct.proto** %4, align 8
  %56 = getelementptr inbounds %struct.proto, %struct.proto* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32* @kasprintf(i32 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.proto*, %struct.proto** %4, align 8
  %60 = getelementptr inbounds %struct.proto, %struct.proto* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32* %58, i32** %62, align 8
  %63 = load %struct.proto*, %struct.proto** %4, align 8
  %64 = getelementptr inbounds %struct.proto, %struct.proto* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %53
  br label %130

70:                                               ; preds = %53
  %71 = load %struct.proto*, %struct.proto** %4, align 8
  %72 = getelementptr inbounds %struct.proto, %struct.proto* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.proto*, %struct.proto** %4, align 8
  %77 = getelementptr inbounds %struct.proto, %struct.proto* %76, i32 0, i32 3
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SLAB_ACCOUNT, align 4
  %82 = load %struct.proto*, %struct.proto** %4, align 8
  %83 = getelementptr inbounds %struct.proto, %struct.proto* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %81, %84
  %86 = call i32* @kmem_cache_create(i32* %75, i32 %80, i32 0, i32 %85, i32* null)
  %87 = load %struct.proto*, %struct.proto** %4, align 8
  %88 = getelementptr inbounds %struct.proto, %struct.proto* %87, i32 0, i32 3
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i32* %86, i32** %90, align 8
  %91 = load %struct.proto*, %struct.proto** %4, align 8
  %92 = getelementptr inbounds %struct.proto, %struct.proto* %91, i32 0, i32 3
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %70
  br label %114

98:                                               ; preds = %70
  br label %99

99:                                               ; preds = %98, %48
  br label %100

100:                                              ; preds = %99, %2
  %101 = call i32 @mutex_lock(i32* @proto_list_mutex)
  %102 = load %struct.proto*, %struct.proto** %4, align 8
  %103 = call i32 @assign_proto_idx(%struct.proto* %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = call i32 @mutex_unlock(i32* @proto_list_mutex)
  br label %114

108:                                              ; preds = %100
  %109 = load %struct.proto*, %struct.proto** %4, align 8
  %110 = getelementptr inbounds %struct.proto, %struct.proto* %109, i32 0, i32 4
  %111 = call i32 @list_add(i32* %110, i32* @proto_list)
  %112 = call i32 @mutex_unlock(i32* @proto_list_mutex)
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %147

114:                                              ; preds = %106, %97
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %114
  %118 = load %struct.proto*, %struct.proto** %4, align 8
  %119 = getelementptr inbounds %struct.proto, %struct.proto* %118, i32 0, i32 3
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = icmp ne %struct.TYPE_2__* %120, null
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load %struct.proto*, %struct.proto** %4, align 8
  %124 = getelementptr inbounds %struct.proto, %struct.proto* %123, i32 0, i32 3
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @kfree(i32* %127)
  br label %129

129:                                              ; preds = %122, %117, %114
  br label %130

130:                                              ; preds = %129, %69, %47
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %130
  %134 = load %struct.proto*, %struct.proto** %4, align 8
  %135 = getelementptr inbounds %struct.proto, %struct.proto* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @req_prot_cleanup(i32 %136)
  %138 = load %struct.proto*, %struct.proto** %4, align 8
  %139 = getelementptr inbounds %struct.proto, %struct.proto* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @kmem_cache_destroy(i32* %140)
  %142 = load %struct.proto*, %struct.proto** %4, align 8
  %143 = getelementptr inbounds %struct.proto, %struct.proto* %142, i32 0, i32 1
  store i32* null, i32** %143, align 8
  br label %144

144:                                              ; preds = %133, %130
  br label %145

145:                                              ; preds = %144, %38
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %145, %108
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32* @kmem_cache_create_usercopy(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @pr_crit(i8*, i32) #1

declare dso_local i64 @req_prot_init(%struct.proto*) #1

declare dso_local i32* @kasprintf(i32, i8*, i32) #1

declare dso_local i32* @kmem_cache_create(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @assign_proto_idx(%struct.proto*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @req_prot_cleanup(i32) #1

declare dso_local i32 @kmem_cache_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

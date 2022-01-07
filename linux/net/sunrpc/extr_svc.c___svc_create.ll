; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c___svc_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c___svc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { i32, i32, i32, i32, i32, %struct.svc_pool*, i32, i32, i32, i32, %struct.svc_serv_ops*, i32, i32, %struct.svc_program* }
%struct.svc_pool = type { i32, i32, i32, i32 }
%struct.svc_program = type { i32, i32, i32, %struct.svc_program*, %struct.TYPE_2__**, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.svc_serv_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RPCSVC_MAXPAYLOAD = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"svc: initialising pool %u for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_serv* (%struct.svc_program*, i32, i32, %struct.svc_serv_ops*)* @__svc_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_serv* @__svc_create(%struct.svc_program* %0, i32 %1, i32 %2, %struct.svc_serv_ops* %3) #0 {
  %5 = alloca %struct.svc_serv*, align 8
  %6 = alloca %struct.svc_program*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.svc_serv_ops*, align 8
  %10 = alloca %struct.svc_serv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.svc_pool*, align 8
  store %struct.svc_program* %0, %struct.svc_program** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.svc_serv_ops* %3, %struct.svc_serv_ops** %9, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.svc_serv* @kzalloc(i32 72, i32 %15)
  store %struct.svc_serv* %16, %struct.svc_serv** %10, align 8
  %17 = icmp ne %struct.svc_serv* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store %struct.svc_serv* null, %struct.svc_serv** %5, align 8
  br label %203

19:                                               ; preds = %4
  %20 = load %struct.svc_program*, %struct.svc_program** %6, align 8
  %21 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  %24 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load %struct.svc_program*, %struct.svc_program** %6, align 8
  %26 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  %27 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %26, i32 0, i32 13
  store %struct.svc_program* %25, %struct.svc_program** %27, align 8
  %28 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  %29 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.svc_program*, %struct.svc_program** %6, align 8
  %31 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  %34 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %33, i32 0, i32 12
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @RPCSVC_MAXPAYLOAD, align 4
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %19
  %39 = load i32, i32* @RPCSVC_MAXPAYLOAD, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %19
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  br label %46

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 4096, %45 ]
  %48 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  %49 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  %51 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = zext i32 %52 to i64
  %54 = load i64, i64* @PAGE_SIZE, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i64, i64* @PAGE_SIZE, align 8
  %57 = call i32 @roundup(i64 %55, i64 %56)
  %58 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  %59 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %58, i32 0, i32 11
  store i32 %57, i32* %59, align 8
  %60 = load %struct.svc_serv_ops*, %struct.svc_serv_ops** %9, align 8
  %61 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  %62 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %61, i32 0, i32 10
  store %struct.svc_serv_ops* %60, %struct.svc_serv_ops** %62, align 8
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %128, %46
  %64 = load %struct.svc_program*, %struct.svc_program** %6, align 8
  %65 = icmp ne %struct.svc_program* %64, null
  br i1 %65, label %66, label %132

66:                                               ; preds = %63
  %67 = load %struct.svc_program*, %struct.svc_program** %6, align 8
  %68 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = load %struct.svc_program*, %struct.svc_program** %6, align 8
  %72 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %125, %66
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.svc_program*, %struct.svc_program** %6, align 8
  %76 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ult i32 %74, %77
  br i1 %78, label %79, label %128

79:                                               ; preds = %73
  %80 = load %struct.svc_program*, %struct.svc_program** %6, align 8
  %81 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %80, i32 0, i32 4
  %82 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %82, i64 %84
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = icmp ne %struct.TYPE_2__* %86, null
  br i1 %87, label %88, label %124

88:                                               ; preds = %79
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.svc_program*, %struct.svc_program** %6, align 8
  %91 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.svc_program*, %struct.svc_program** %6, align 8
  %93 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = icmp ugt i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.svc_program*, %struct.svc_program** %6, align 8
  %100 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %97, %88
  %102 = load %struct.svc_program*, %struct.svc_program** %6, align 8
  %103 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %102, i32 0, i32 4
  %104 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %104, i64 %106
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ugt i32 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %101
  %114 = load %struct.svc_program*, %struct.svc_program** %6, align 8
  %115 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %114, i32 0, i32 4
  %116 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %116, i64 %118
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %113, %101
  br label %124

124:                                              ; preds = %123, %79
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %11, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %73

128:                                              ; preds = %73
  %129 = load %struct.svc_program*, %struct.svc_program** %6, align 8
  %130 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %129, i32 0, i32 3
  %131 = load %struct.svc_program*, %struct.svc_program** %130, align 8
  store %struct.svc_program* %131, %struct.svc_program** %6, align 8
  br label %63

132:                                              ; preds = %63
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  %135 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  %137 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %136, i32 0, i32 9
  %138 = call i32 @INIT_LIST_HEAD(i32* %137)
  %139 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  %140 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %139, i32 0, i32 8
  %141 = call i32 @INIT_LIST_HEAD(i32* %140)
  %142 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  %143 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %142, i32 0, i32 7
  %144 = call i32 @timer_setup(i32* %143, i32* null, i32 0)
  %145 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  %146 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %145, i32 0, i32 6
  %147 = call i32 @spin_lock_init(i32* %146)
  %148 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  %149 = call i32 @__svc_init_bc(%struct.svc_serv* %148)
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  %152 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  %154 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @GFP_KERNEL, align 4
  %157 = call %struct.svc_pool* @kcalloc(i32 %155, i32 16, i32 %156)
  %158 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  %159 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %158, i32 0, i32 5
  store %struct.svc_pool* %157, %struct.svc_pool** %159, align 8
  %160 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  %161 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %160, i32 0, i32 5
  %162 = load %struct.svc_pool*, %struct.svc_pool** %161, align 8
  %163 = icmp ne %struct.svc_pool* %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %132
  %165 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  %166 = call i32 @kfree(%struct.svc_serv* %165)
  store %struct.svc_serv* null, %struct.svc_serv** %5, align 8
  br label %203

167:                                              ; preds = %132
  store i32 0, i32* %13, align 4
  br label %168

168:                                              ; preds = %198, %167
  %169 = load i32, i32* %13, align 4
  %170 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  %171 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = icmp ult i32 %169, %172
  br i1 %173, label %174, label %201

174:                                              ; preds = %168
  %175 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  %176 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %175, i32 0, i32 5
  %177 = load %struct.svc_pool*, %struct.svc_pool** %176, align 8
  %178 = load i32, i32* %13, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %177, i64 %179
  store %struct.svc_pool* %180, %struct.svc_pool** %14, align 8
  %181 = load i32, i32* %13, align 4
  %182 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  %183 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %181, i32 %184)
  %186 = load i32, i32* %13, align 4
  %187 = load %struct.svc_pool*, %struct.svc_pool** %14, align 8
  %188 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 4
  %189 = load %struct.svc_pool*, %struct.svc_pool** %14, align 8
  %190 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %189, i32 0, i32 3
  %191 = call i32 @INIT_LIST_HEAD(i32* %190)
  %192 = load %struct.svc_pool*, %struct.svc_pool** %14, align 8
  %193 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %192, i32 0, i32 2
  %194 = call i32 @INIT_LIST_HEAD(i32* %193)
  %195 = load %struct.svc_pool*, %struct.svc_pool** %14, align 8
  %196 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %195, i32 0, i32 1
  %197 = call i32 @spin_lock_init(i32* %196)
  br label %198

198:                                              ; preds = %174
  %199 = load i32, i32* %13, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %13, align 4
  br label %168

201:                                              ; preds = %168
  %202 = load %struct.svc_serv*, %struct.svc_serv** %10, align 8
  store %struct.svc_serv* %202, %struct.svc_serv** %5, align 8
  br label %203

203:                                              ; preds = %201, %164, %18
  %204 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  ret %struct.svc_serv* %204
}

declare dso_local %struct.svc_serv* @kzalloc(i32, i32) #1

declare dso_local i32 @roundup(i64, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @__svc_init_bc(%struct.svc_serv*) #1

declare dso_local %struct.svc_pool* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.svc_serv*) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

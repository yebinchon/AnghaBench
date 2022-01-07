; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c_nf_nat_register_fn.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c_nf_nat_register_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nf_hook_ops = type { i32, i32, %struct.nf_hook_ops* }
%struct.nat_net = type { %struct.nf_nat_hooks_net* }
%struct.nf_nat_hooks_net = type { i64, %struct.nf_nat_lookup_hook_priv* }
%struct.nf_nat_lookup_hook_priv = type { i32, i32, %struct.nf_nat_lookup_hook_priv* }

@nat_net_id = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nf_nat_proto_mutex = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_nat_register_fn(%struct.net* %0, i64 %1, %struct.nf_hook_ops* %2, %struct.nf_hook_ops* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nf_hook_ops*, align 8
  %10 = alloca %struct.nf_hook_ops*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nat_net*, align 8
  %13 = alloca %struct.nf_nat_hooks_net*, align 8
  %14 = alloca %struct.nf_nat_lookup_hook_priv*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.nf_hook_ops*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.nf_hook_ops* %2, %struct.nf_hook_ops** %9, align 8
  store %struct.nf_hook_ops* %3, %struct.nf_hook_ops** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.net*, %struct.net** %7, align 8
  %20 = load i32, i32* @nat_net_id, align 4
  %21 = call %struct.nat_net* @net_generic(%struct.net* %19, i32 %20)
  store %struct.nat_net* %21, %struct.nat_net** %12, align 8
  %22 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %9, align 8
  %23 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %15, align 4
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.nat_net*, %struct.nat_net** %12, align 8
  %27 = getelementptr inbounds %struct.nat_net, %struct.nat_net* %26, i32 0, i32 0
  %28 = load %struct.nf_nat_hooks_net*, %struct.nf_nat_hooks_net** %27, align 8
  %29 = call i64 @ARRAY_SIZE(%struct.nf_nat_hooks_net* %28)
  %30 = icmp uge i64 %25, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON_ONCE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %216

37:                                               ; preds = %5
  %38 = load %struct.nat_net*, %struct.nat_net** %12, align 8
  %39 = getelementptr inbounds %struct.nat_net, %struct.nat_net* %38, i32 0, i32 0
  %40 = load %struct.nf_nat_hooks_net*, %struct.nf_nat_hooks_net** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.nf_nat_hooks_net, %struct.nf_nat_hooks_net* %40, i64 %41
  store %struct.nf_nat_hooks_net* %42, %struct.nf_nat_hooks_net** %13, align 8
  store i32 0, i32* %17, align 4
  br label %43

43:                                               ; preds = %59, %37
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %10, align 8
  %49 = load i32, i32* %17, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %48, i64 %50
  %52 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %15, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %17, align 4
  store i32 %57, i32* %15, align 4
  br label %62

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %17, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %17, align 4
  br label %43

62:                                               ; preds = %56, %43
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @WARN_ON_ONCE(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %216

72:                                               ; preds = %62
  %73 = call i32 @mutex_lock(i32* @nf_nat_proto_mutex)
  %74 = load %struct.nf_nat_hooks_net*, %struct.nf_nat_hooks_net** %13, align 8
  %75 = getelementptr inbounds %struct.nf_nat_hooks_net, %struct.nf_nat_hooks_net* %74, i32 0, i32 1
  %76 = load %struct.nf_nat_lookup_hook_priv*, %struct.nf_nat_lookup_hook_priv** %75, align 8
  %77 = icmp ne %struct.nf_nat_lookup_hook_priv* %76, null
  br i1 %77, label %178, label %78

78:                                               ; preds = %72
  %79 = load %struct.nf_nat_hooks_net*, %struct.nf_nat_hooks_net** %13, align 8
  %80 = getelementptr inbounds %struct.nf_nat_hooks_net, %struct.nf_nat_hooks_net* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @WARN_ON(i32 %83)
  %85 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %10, align 8
  %86 = bitcast %struct.nf_hook_ops* %85 to %struct.nf_nat_lookup_hook_priv*
  %87 = load i32, i32* %11, align 4
  %88 = zext i32 %87 to i64
  %89 = mul i64 16, %88
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call %struct.nf_nat_lookup_hook_priv* @kmemdup(%struct.nf_nat_lookup_hook_priv* %86, i32 %90, i32 %91)
  %93 = bitcast %struct.nf_nat_lookup_hook_priv* %92 to %struct.nf_hook_ops*
  store %struct.nf_hook_ops* %93, %struct.nf_hook_ops** %16, align 8
  %94 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %16, align 8
  %95 = icmp ne %struct.nf_hook_ops* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %78
  %97 = call i32 @mutex_unlock(i32* @nf_nat_proto_mutex)
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %216

100:                                              ; preds = %78
  store i32 0, i32* %17, align 4
  br label %101

101:                                              ; preds = %139, %100
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %142

105:                                              ; preds = %101
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call %struct.nf_nat_lookup_hook_priv* @kzalloc(i32 16, i32 %106)
  store %struct.nf_nat_lookup_hook_priv* %107, %struct.nf_nat_lookup_hook_priv** %14, align 8
  %108 = load %struct.nf_nat_lookup_hook_priv*, %struct.nf_nat_lookup_hook_priv** %14, align 8
  %109 = icmp ne %struct.nf_nat_lookup_hook_priv* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = load %struct.nf_nat_lookup_hook_priv*, %struct.nf_nat_lookup_hook_priv** %14, align 8
  %112 = bitcast %struct.nf_nat_lookup_hook_priv* %111 to %struct.nf_hook_ops*
  %113 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %16, align 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %113, i64 %115
  %117 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %116, i32 0, i32 2
  store %struct.nf_hook_ops* %112, %struct.nf_hook_ops** %117, align 8
  br label %139

118:                                              ; preds = %105
  %119 = call i32 @mutex_unlock(i32* @nf_nat_proto_mutex)
  br label %120

120:                                              ; preds = %123, %118
  %121 = load i32, i32* %17, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %16, align 8
  %125 = load i32, i32* %17, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %17, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %124, i64 %127
  %129 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %128, i32 0, i32 2
  %130 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %129, align 8
  %131 = bitcast %struct.nf_hook_ops* %130 to %struct.nf_nat_lookup_hook_priv*
  %132 = call i32 @kfree(%struct.nf_nat_lookup_hook_priv* %131)
  br label %120

133:                                              ; preds = %120
  %134 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %16, align 8
  %135 = bitcast %struct.nf_hook_ops* %134 to %struct.nf_nat_lookup_hook_priv*
  %136 = call i32 @kfree(%struct.nf_nat_lookup_hook_priv* %135)
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %6, align 4
  br label %216

139:                                              ; preds = %110
  %140 = load i32, i32* %17, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %17, align 4
  br label %101

142:                                              ; preds = %101
  %143 = load %struct.net*, %struct.net** %7, align 8
  %144 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %16, align 8
  %145 = bitcast %struct.nf_hook_ops* %144 to %struct.nf_nat_lookup_hook_priv*
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @nf_register_net_hooks(%struct.net* %143, %struct.nf_nat_lookup_hook_priv* %145, i32 %146)
  store i32 %147, i32* %18, align 4
  %148 = load i32, i32* %18, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %173

150:                                              ; preds = %142
  %151 = call i32 @mutex_unlock(i32* @nf_nat_proto_mutex)
  store i32 0, i32* %17, align 4
  br label %152

152:                                              ; preds = %165, %150
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp ult i32 %153, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %152
  %157 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %16, align 8
  %158 = load i32, i32* %17, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %157, i64 %159
  %161 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %160, i32 0, i32 2
  %162 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %161, align 8
  %163 = bitcast %struct.nf_hook_ops* %162 to %struct.nf_nat_lookup_hook_priv*
  %164 = call i32 @kfree(%struct.nf_nat_lookup_hook_priv* %163)
  br label %165

165:                                              ; preds = %156
  %166 = load i32, i32* %17, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %17, align 4
  br label %152

168:                                              ; preds = %152
  %169 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %16, align 8
  %170 = bitcast %struct.nf_hook_ops* %169 to %struct.nf_nat_lookup_hook_priv*
  %171 = call i32 @kfree(%struct.nf_nat_lookup_hook_priv* %170)
  %172 = load i32, i32* %18, align 4
  store i32 %172, i32* %6, align 4
  br label %216

173:                                              ; preds = %142
  %174 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %16, align 8
  %175 = bitcast %struct.nf_hook_ops* %174 to %struct.nf_nat_lookup_hook_priv*
  %176 = load %struct.nf_nat_hooks_net*, %struct.nf_nat_hooks_net** %13, align 8
  %177 = getelementptr inbounds %struct.nf_nat_hooks_net, %struct.nf_nat_hooks_net* %176, i32 0, i32 1
  store %struct.nf_nat_lookup_hook_priv* %175, %struct.nf_nat_lookup_hook_priv** %177, align 8
  br label %178

178:                                              ; preds = %173, %72
  %179 = load %struct.nf_nat_hooks_net*, %struct.nf_nat_hooks_net** %13, align 8
  %180 = getelementptr inbounds %struct.nf_nat_hooks_net, %struct.nf_nat_hooks_net* %179, i32 0, i32 1
  %181 = load %struct.nf_nat_lookup_hook_priv*, %struct.nf_nat_lookup_hook_priv** %180, align 8
  %182 = bitcast %struct.nf_nat_lookup_hook_priv* %181 to %struct.nf_hook_ops*
  store %struct.nf_hook_ops* %182, %struct.nf_hook_ops** %16, align 8
  %183 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %16, align 8
  %184 = load i32, i32* %15, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %183, i64 %185
  %187 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %186, i32 0, i32 2
  %188 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %187, align 8
  %189 = bitcast %struct.nf_hook_ops* %188 to %struct.nf_nat_lookup_hook_priv*
  store %struct.nf_nat_lookup_hook_priv* %189, %struct.nf_nat_lookup_hook_priv** %14, align 8
  %190 = load %struct.nf_nat_lookup_hook_priv*, %struct.nf_nat_lookup_hook_priv** %14, align 8
  %191 = icmp ne %struct.nf_nat_lookup_hook_priv* %190, null
  %192 = xor i1 %191, true
  %193 = zext i1 %192 to i32
  %194 = call i64 @WARN_ON_ONCE(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %178
  %197 = call i32 @mutex_unlock(i32* @nf_nat_proto_mutex)
  %198 = load i32, i32* @EOPNOTSUPP, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %6, align 4
  br label %216

200:                                              ; preds = %178
  %201 = load %struct.nf_nat_lookup_hook_priv*, %struct.nf_nat_lookup_hook_priv** %14, align 8
  %202 = getelementptr inbounds %struct.nf_nat_lookup_hook_priv, %struct.nf_nat_lookup_hook_priv* %201, i32 0, i32 1
  %203 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %9, align 8
  %204 = bitcast %struct.nf_hook_ops* %203 to %struct.nf_nat_lookup_hook_priv*
  %205 = call i32 @nf_hook_entries_insert_raw(i32* %202, %struct.nf_nat_lookup_hook_priv* %204)
  store i32 %205, i32* %18, align 4
  %206 = load i32, i32* %18, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %200
  %209 = load %struct.nf_nat_hooks_net*, %struct.nf_nat_hooks_net** %13, align 8
  %210 = getelementptr inbounds %struct.nf_nat_hooks_net, %struct.nf_nat_hooks_net* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %210, align 8
  br label %213

213:                                              ; preds = %208, %200
  %214 = call i32 @mutex_unlock(i32* @nf_nat_proto_mutex)
  %215 = load i32, i32* %18, align 4
  store i32 %215, i32* %6, align 4
  br label %216

216:                                              ; preds = %213, %196, %168, %133, %96, %69, %34
  %217 = load i32, i32* %6, align 4
  ret i32 %217
}

declare dso_local %struct.nat_net* @net_generic(%struct.net*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.nf_nat_hooks_net*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.nf_nat_lookup_hook_priv* @kmemdup(%struct.nf_nat_lookup_hook_priv*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.nf_nat_lookup_hook_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.nf_nat_lookup_hook_priv*) #1

declare dso_local i32 @nf_register_net_hooks(%struct.net*, %struct.nf_nat_lookup_hook_priv*, i32) #1

declare dso_local i32 @nf_hook_entries_insert_raw(i32*, %struct.nf_nat_lookup_hook_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
